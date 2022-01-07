
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct section {int flags; int name; int element_name; } ;
typedef int buf ;
struct TYPE_6__ {size_t level; TYPE_4__* section_pbuf; struct section** section; TYPE_2__* priv; } ;
typedef TYPE_1__ WriterContext ;
struct TYPE_8__ {int str; } ;
struct TYPE_7__ {int* nested_section; scalar_t__ noprint_wrappers; } ;
typedef TYPE_2__ DefaultContext ;


 int SECTION_FLAG_IS_ARRAY ;
 int SECTION_FLAG_IS_WRAPPER ;
 int av_bprint_clear (TYPE_4__*) ;
 int av_bprintf (TYPE_4__*,char*,int ,char*) ;
 int av_x_if_null (int ,int ) ;
 int printf (char*,char*) ;
 char* upcase_string (char*,int,int ) ;

__attribute__((used)) static void default_print_section_header(WriterContext *wctx)
{
    DefaultContext *def = wctx->priv;
    char buf[32];
    const struct section *section = wctx->section[wctx->level];
    const struct section *parent_section = wctx->level ?
        wctx->section[wctx->level-1] : ((void*)0);

    av_bprint_clear(&wctx->section_pbuf[wctx->level]);
    if (parent_section &&
        !(parent_section->flags & (SECTION_FLAG_IS_WRAPPER|SECTION_FLAG_IS_ARRAY))) {
        def->nested_section[wctx->level] = 1;
        av_bprintf(&wctx->section_pbuf[wctx->level], "%s%s:",
                   wctx->section_pbuf[wctx->level-1].str,
                   upcase_string(buf, sizeof(buf),
                                 av_x_if_null(section->element_name, section->name)));
    }

    if (def->noprint_wrappers || def->nested_section[wctx->level])
        return;

    if (!(section->flags & (SECTION_FLAG_IS_WRAPPER|SECTION_FLAG_IS_ARRAY)))
        printf("[%s]\n", upcase_string(buf, sizeof(buf), section->name));
}
