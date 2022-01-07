
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_4__ {int fc; } ;
typedef TYPE_1__ MOVContext ;
typedef int AVIOContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int MKBETAG (char,float,char,char) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int av_log (int ,int ,char*) ;
 int avio_rb32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_size (int *) ;
 int avio_tell (int *) ;
 int read_tfra (TYPE_1__*,int *) ;

__attribute__((used)) static int mov_read_mfra(MOVContext *c, AVIOContext *f)
{
    int64_t stream_size = avio_size(f);
    int64_t original_pos = avio_tell(f);
    int64_t seek_ret;
    int32_t mfra_size;
    int ret = -1;
    if ((seek_ret = avio_seek(f, stream_size - 4, SEEK_SET)) < 0) {
        ret = seek_ret;
        goto fail;
    }
    mfra_size = avio_rb32(f);
    if (mfra_size < 0 || mfra_size > stream_size) {
        av_log(c->fc, AV_LOG_DEBUG, "doesn't look like mfra (unreasonable size)\n");
        goto fail;
    }
    if ((seek_ret = avio_seek(f, -mfra_size, SEEK_CUR)) < 0) {
        ret = seek_ret;
        goto fail;
    }
    if (avio_rb32(f) != mfra_size) {
        av_log(c->fc, AV_LOG_DEBUG, "doesn't look like mfra (size mismatch)\n");
        goto fail;
    }
    if (avio_rb32(f) != MKBETAG('m', 'f', 'r', 'a')) {
        av_log(c->fc, AV_LOG_DEBUG, "doesn't look like mfra (tag mismatch)\n");
        goto fail;
    }
    av_log(c->fc, AV_LOG_VERBOSE, "stream has mfra\n");
    do {
        ret = read_tfra(c, f);
        if (ret < 0)
            goto fail;
    } while (!ret);
    ret = 0;
fail:
    seek_ret = avio_seek(f, original_pos, SEEK_SET);
    if (seek_ret < 0) {
        av_log(c->fc, AV_LOG_ERROR,
               "failed to seek back after looking for mfra\n");
        ret = seek_ret;
    }
    return ret;
}
