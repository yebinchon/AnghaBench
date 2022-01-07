
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class_name; } ;
typedef TYPE_1__ AVClass ;


 int AV_LOG_INFO ;
 int av_log (void*,int ,char*,int ) ;
 int opt_list (void*,void*,int *,int,int,int) ;

int av_opt_show2(void *obj, void *av_log_obj, int req_flags, int rej_flags)
{
    if (!obj)
        return -1;

    av_log(av_log_obj, AV_LOG_INFO, "%s AVOptions:\n", (*(AVClass **)obj)->class_name);

    opt_list(obj, av_log_obj, ((void*)0), req_flags, rej_flags, -1);

    return 0;
}
