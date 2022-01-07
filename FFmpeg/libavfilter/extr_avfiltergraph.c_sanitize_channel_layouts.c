
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int all_layouts; int all_counts; scalar_t__ nb_channel_layouts; } ;
typedef TYPE_1__ AVFilterChannelLayouts ;


 int AV_LOG_WARNING ;
 int av_log (void*,int ,char*) ;

__attribute__((used)) static void sanitize_channel_layouts(void *log, AVFilterChannelLayouts *l)
{
    if (!l)
        return;
    if (l->nb_channel_layouts) {
        if (l->all_layouts || l->all_counts)
            av_log(log, AV_LOG_WARNING, "All layouts set on non-empty list\n");
        l->all_layouts = l->all_counts = 0;
    } else {
        if (l->all_counts && !l->all_layouts)
            av_log(log, AV_LOG_WARNING, "All counts without all layouts\n");
        l->all_layouts = 1;
    }
}
