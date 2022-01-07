
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* text; struct TYPE_4__* effect; struct TYPE_4__* name; struct TYPE_4__* style; } ;
typedef TYPE_1__ ASSDialog ;


 int av_freep (TYPE_1__**) ;

void ff_ass_free_dialog(ASSDialog **dialogp)
{
    ASSDialog *dialog = *dialogp;
    if (!dialog)
        return;
    av_freep(&dialog->style);
    av_freep(&dialog->name);
    av_freep(&dialog->effect);
    av_freep(&dialog->text);
    av_freep(dialogp);
}
