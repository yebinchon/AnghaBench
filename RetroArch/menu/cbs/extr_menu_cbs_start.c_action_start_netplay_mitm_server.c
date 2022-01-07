
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int netplay_mitm_server; } ;
struct TYPE_5__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;


 TYPE_2__* config_get_ptr () ;
 int netplay_mitm_server ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int action_start_netplay_mitm_server(unsigned type, const char *label)
{
   settings_t *settings = config_get_ptr();
   strlcpy(settings->arrays.netplay_mitm_server, netplay_mitm_server, sizeof(settings->arrays.netplay_mitm_server));
   return 0;
}
