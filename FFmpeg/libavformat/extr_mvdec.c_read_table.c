
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int name ;
struct TYPE_7__ {int * pb; } ;
typedef int AVStream ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*,int) ;
 scalar_t__ avio_feof (int *) ;
 void* avio_rb32 (int *) ;
 int avio_read (int *,char*,int) ;
 int avio_skip (int *,int) ;
 int avpriv_request_sample (TYPE_1__*,char*,char*) ;

__attribute__((used)) static int read_table(AVFormatContext *avctx, AVStream *st,
                       int (*parse)(AVFormatContext *avctx, AVStream *st,
                                    const char *name, int size))
{
    unsigned count;
    int i;

    AVIOContext *pb = avctx->pb;
    avio_skip(pb, 4);
    count = avio_rb32(pb);
    avio_skip(pb, 4);
    for (i = 0; i < count; i++) {
        char name[17];
        int size;

        if (avio_feof(pb))
            return AVERROR_EOF;

        avio_read(pb, name, 16);
        name[sizeof(name) - 1] = 0;
        size = avio_rb32(pb);
        if (size < 0) {
            av_log(avctx, AV_LOG_ERROR, "entry size %d is invalid\n", size);
            return AVERROR_INVALIDDATA;
        }
        if (parse(avctx, st, name, size) < 0) {
            avpriv_request_sample(avctx, "Variable %s", name);
            avio_skip(pb, size);
        }
    }
    return 0;
}
