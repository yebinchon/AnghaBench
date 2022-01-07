
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int section; } ;
struct TYPE_9__ {int dialogs_count; int * dialogs; } ;
struct TYPE_10__ {TYPE_1__ ass; } ;
typedef TYPE_2__ ASSSplitContext ;
typedef int ASSDialog ;


 int FF_ARRAY_ELEMS (TYPE_4__*) ;
 TYPE_4__* ass_sections ;
 scalar_t__ ass_split (TYPE_2__*,char const*) ;
 int free_section (TYPE_2__*,TYPE_4__*) ;
 int strcmp (int ,char*) ;

ASSDialog *ff_ass_split_dialog(ASSSplitContext *ctx, const char *buf,
                               int cache, int *number)
{
    ASSDialog *dialog = ((void*)0);
    int i, count;
    if (!cache)
        for (i=0; i<FF_ARRAY_ELEMS(ass_sections); i++)
            if (!strcmp(ass_sections[i].section, "Events")) {
                free_section(ctx, &ass_sections[i]);
                break;
            }
    count = ctx->ass.dialogs_count;
    if (ass_split(ctx, buf) == 0)
        dialog = ctx->ass.dialogs + count;
    if (number)
        *number = ctx->ass.dialogs_count - count;
    return dialog;
}
