
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* eos_callback_data; int eos_callback; } ;
typedef TYPE_1__ ILCLIENT_T ;
typedef int ILCLIENT_CALLBACK_T ;



void ilclient_set_eos_callback(ILCLIENT_T *st, ILCLIENT_CALLBACK_T func, void *userdata)
{
   st->eos_callback = func;
   st->eos_callback_data = userdata;
}
