
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ error; } ;
typedef TYPE_1__ AVIOContext ;
typedef int AVBPrint ;


 scalar_t__ AVERROR_EOF ;
 int av_bprint_append_data (int *,char*,int) ;
 scalar_t__ avio_feof (TYPE_1__*) ;
 char avio_r8 (TYPE_1__*) ;
 int avio_skip (TYPE_1__*,int) ;

int64_t ff_read_line_to_bprint(AVIOContext *s, AVBPrint *bp)
{
    int len, end;
    int64_t read = 0;
    char tmp[1024];
    char c;

    do {
        len = 0;
        do {
            c = avio_r8(s);
            end = (c == '\r' || c == '\n' || c == '\0');
            if (!end)
                tmp[len++] = c;
        } while (!end && len < sizeof(tmp));
        av_bprint_append_data(bp, tmp, len);
        read += len;
    } while (!end);

    if (c == '\r' && avio_r8(s) != '\n' && !avio_feof(s))
        avio_skip(s, -1);

    if (!c && s->error)
        return s->error;

    if (!c && !read && avio_feof(s))
        return AVERROR_EOF;

    return read;
}
