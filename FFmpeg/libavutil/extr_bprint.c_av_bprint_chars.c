
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; scalar_t__ str; } ;
typedef TYPE_1__ AVBPrint ;


 unsigned int FFMIN (unsigned int,unsigned int) ;
 scalar_t__ av_bprint_alloc (TYPE_1__*,unsigned int) ;
 int av_bprint_grow (TYPE_1__*,unsigned int) ;
 unsigned int av_bprint_room (TYPE_1__*) ;
 int memset (scalar_t__,char,unsigned int) ;

void av_bprint_chars(AVBPrint *buf, char c, unsigned n)
{
    unsigned room, real_n;

    while (1) {
        room = av_bprint_room(buf);
        if (n < room)
            break;
        if (av_bprint_alloc(buf, n))
            break;
    }
    if (room) {
        real_n = FFMIN(n, room - 1);
        memset(buf->str + buf->len, c, real_n);
    }
    av_bprint_grow(buf, n);
}
