
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; char* str; } ;
typedef TYPE_1__ AVBPrint ;


 scalar_t__ av_bprint_is_complete (TYPE_1__*) ;

__attribute__((used)) static void rstrip_spaces_buf(AVBPrint *buf)
{
    if (av_bprint_is_complete(buf))
        while (buf->len > 0 && buf->str[buf->len - 1] == ' ')
            buf->str[--buf->len] = 0;
}
