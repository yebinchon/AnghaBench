
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ CACAContext ;


 int AV_LOG_INFO ;
 int av_log (int ,int ,char*,...) ;
 char** caca_get_display_driver_list () ;

__attribute__((used)) static void list_drivers(CACAContext *c)
{
    const char *const *drivers = caca_get_display_driver_list();
    int i;

    av_log(c->ctx, AV_LOG_INFO, "Available drivers:\n");
    for (i = 0; drivers[i]; i += 2)
        av_log(c->ctx, AV_LOG_INFO, "%s: %s\n", drivers[i], drivers[i + 1]);
}
