
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subtitle_list {int dummy; } ;
struct TYPE_2__ {struct subtitle_list* subtitles; } ;


 TYPE_1__ dlg ;

void set_dialog_subtitles(struct subtitle_list *subtitles)
{
 dlg.subtitles = subtitles;
}
