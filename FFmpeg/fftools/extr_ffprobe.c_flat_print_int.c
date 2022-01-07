
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t level; TYPE_1__* section_pbuf; } ;
typedef TYPE_2__ WriterContext ;
struct TYPE_4__ {char* str; } ;


 int printf (char*,char*,char const*,long long) ;

__attribute__((used)) static void flat_print_int(WriterContext *wctx, const char *key, long long int value)
{
    printf("%s%s=%lld\n", wctx->section_pbuf[wctx->level].str, key, value);
}
