
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
typedef int buf ;
struct TYPE_6__ {int (* io_open ) (TYPE_1__*,int **,char const*,int ,int *) ;} ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int EIO ;
 int FFMIN (scalar_t__,int) ;
 int avio_flush (int *) ;
 int avio_read (int *,int *,int) ;
 int avio_write (int *,int *,int) ;
 int ff_format_io_close (TYPE_1__*,int **) ;
 int stub1 (TYPE_1__*,int **,char const*,int ,int *) ;
 int stub2 (TYPE_1__*,int **,char const*,int ,int *) ;

__attribute__((used)) static int copy_moof(AVFormatContext *s, const char* infile, const char *outfile, int64_t size)
{
    AVIOContext *in, *out;
    int ret = 0;
    if ((ret = s->io_open(s, &in, infile, AVIO_FLAG_READ, ((void*)0))) < 0)
        return ret;
    if ((ret = s->io_open(s, &out, outfile, AVIO_FLAG_WRITE, ((void*)0))) < 0) {
        ff_format_io_close(s, &in);
        return ret;
    }
    while (size > 0) {
        uint8_t buf[8192];
        int n = FFMIN(size, sizeof(buf));
        n = avio_read(in, buf, n);
        if (n <= 0) {
            ret = AVERROR(EIO);
            break;
        }
        avio_write(out, buf, n);
        size -= n;
    }
    avio_flush(out);
    ff_format_io_close(s, &out);
    ff_format_io_close(s, &in);
    return ret;
}
