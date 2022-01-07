
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int size; scalar_t__* str; } ;
typedef TYPE_1__ AVBPrint ;


 size_t FFMIN (unsigned int,int) ;
 int UINT_MAX ;

__attribute__((used)) static void av_bprint_grow(AVBPrint *buf, unsigned extra_len)
{

    extra_len = FFMIN(extra_len, UINT_MAX - 5 - buf->len);
    buf->len += extra_len;
    if (buf->size)
        buf->str[FFMIN(buf->len, buf->size - 1)] = 0;
}
