
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* empty_buffer_done_callback_data; int empty_buffer_done_callback; } ;
typedef TYPE_1__ ILCLIENT_T ;
typedef int ILCLIENT_BUFFER_CALLBACK_T ;



void ilclient_set_empty_buffer_done_callback(ILCLIENT_T *st, ILCLIENT_BUFFER_CALLBACK_T func, void *userdata)
{
   st->empty_buffer_done_callback = func;
   st->empty_buffer_done_callback_data = userdata;
}
