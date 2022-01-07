
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t level; scalar_t__* nb_item; } ;
typedef TYPE_1__ WriterContext ;


 int printf (char*,...) ;

__attribute__((used)) static void xml_print_int(WriterContext *wctx, const char *key, long long int value)
{
    if (wctx->nb_item[wctx->level])
        printf(" ");
    printf("%s=\"%lld\"", key, value);
}
