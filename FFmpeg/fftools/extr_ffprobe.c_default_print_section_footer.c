
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct section {int flags; int name; } ;
typedef int buf ;
struct TYPE_4__ {size_t level; struct section** section; TYPE_2__* priv; } ;
typedef TYPE_1__ WriterContext ;
struct TYPE_5__ {scalar_t__* nested_section; scalar_t__ noprint_wrappers; } ;
typedef TYPE_2__ DefaultContext ;


 int SECTION_FLAG_IS_ARRAY ;
 int SECTION_FLAG_IS_WRAPPER ;
 int printf (char*,char*) ;
 char* upcase_string (char*,int,int ) ;

__attribute__((used)) static void default_print_section_footer(WriterContext *wctx)
{
    DefaultContext *def = wctx->priv;
    const struct section *section = wctx->section[wctx->level];
    char buf[32];

    if (def->noprint_wrappers || def->nested_section[wctx->level])
        return;

    if (!(section->flags & (SECTION_FLAG_IS_WRAPPER|SECTION_FLAG_IS_ARRAY)))
        printf("[/%s]\n", upcase_string(buf, sizeof(buf), section->name));
}
