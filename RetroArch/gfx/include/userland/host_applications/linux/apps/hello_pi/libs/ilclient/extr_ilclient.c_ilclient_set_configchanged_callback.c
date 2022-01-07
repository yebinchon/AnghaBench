
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* configchanged_callback_data; int configchanged_callback; } ;
typedef TYPE_1__ ILCLIENT_T ;
typedef int ILCLIENT_CALLBACK_T ;



void ilclient_set_configchanged_callback(ILCLIENT_T *st, ILCLIENT_CALLBACK_T func, void *userdata)
{
   st->configchanged_callback = func;
   st->configchanged_callback_data = userdata;
}
