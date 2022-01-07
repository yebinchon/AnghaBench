
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int URLContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int BLOCKSIZE ;
 int EINVAL ;
 int ENOMEM ;
 int av_log (int *,int ,char*,char const*,...) ;
 int * av_memdup (int *,int) ;

__attribute__((used)) static int set_aes_arg(URLContext *h, uint8_t **buf, int *buf_len,
                       uint8_t *default_buf, int default_buf_len,
                       const char *desc)
{
    if (!*buf_len) {
        if (!default_buf_len) {
            av_log(h, AV_LOG_ERROR, "%s not set\n", desc);
            return AVERROR(EINVAL);
        } else if (default_buf_len != BLOCKSIZE) {
            av_log(h, AV_LOG_ERROR,
                   "invalid %s size (%d bytes, block size is %d)\n",
                   desc, default_buf_len, BLOCKSIZE);
            return AVERROR(EINVAL);
        }
        *buf = av_memdup(default_buf, default_buf_len);
        if (!*buf)
            return AVERROR(ENOMEM);
        *buf_len = default_buf_len;
    } else if (*buf_len != BLOCKSIZE) {
        av_log(h, AV_LOG_ERROR,
               "invalid %s size (%d bytes, block size is %d)\n",
               desc, *buf_len, BLOCKSIZE);
        return AVERROR(EINVAL);
    }
    return 0;
}
