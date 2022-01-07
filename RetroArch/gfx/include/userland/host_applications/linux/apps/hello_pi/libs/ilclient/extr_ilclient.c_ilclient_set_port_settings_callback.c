
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* port_settings_callback_data; int port_settings_callback; } ;
typedef TYPE_1__ ILCLIENT_T ;
typedef int ILCLIENT_CALLBACK_T ;



void ilclient_set_port_settings_callback(ILCLIENT_T *st, ILCLIENT_CALLBACK_T func, void *userdata)
{
   st->port_settings_callback = func;
   st->port_settings_callback_data = userdata;
}
