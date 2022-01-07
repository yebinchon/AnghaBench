
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eof_reached; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR_EOF ;
 size_t FFMIN (unsigned int,unsigned int) ;
 int avio_r8 (TYPE_1__*) ;
 int avio_read (TYPE_1__*,char*,size_t) ;
 unsigned int ffio_read_varlen (TYPE_1__*) ;

__attribute__((used)) static int get_str(AVIOContext *bc, char *string, unsigned int maxlen)
{
    unsigned int len = ffio_read_varlen(bc);

    if (len && maxlen)
        avio_read(bc, string, FFMIN(len, maxlen));
    while (len > maxlen) {
        avio_r8(bc);
        len--;
        if (bc->eof_reached)
            len = maxlen;
    }

    if (maxlen)
        string[FFMIN(len, maxlen - 1)] = 0;

    if (bc->eof_reached)
        return AVERROR_EOF;
    if (maxlen == len)
        return -1;
    else
        return 0;
}
