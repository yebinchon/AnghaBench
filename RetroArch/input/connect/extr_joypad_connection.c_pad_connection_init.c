
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int connected; int * data; int * iface; } ;
typedef TYPE_1__ joypad_connection_t ;


 unsigned int MAX_USERS ;
 int RARCH_WARN (char*,unsigned int,unsigned int) ;
 scalar_t__ calloc (unsigned int,int) ;
 int set_end_of_list (TYPE_1__*,unsigned int) ;

joypad_connection_t *pad_connection_init(unsigned pads)
{
   unsigned i;
   joypad_connection_t *joyconn;

   if(pads > MAX_USERS)
   {
     RARCH_WARN("[joypad] invalid number of pads requested (%d), using default (%d)\n",
      pads, MAX_USERS);
     pads = MAX_USERS;
   }

   joyconn = (joypad_connection_t*)calloc(pads+1, sizeof(joypad_connection_t));

   if (!joyconn)
      return ((void*)0);

   for (i = 0; i < pads; i++)
   {
      joypad_connection_t *conn = (joypad_connection_t*)&joyconn[i];

      conn->connected = 0;
      conn->iface = ((void*)0);
      conn->data = ((void*)0);
   }

   set_end_of_list(joyconn, pads);

   return joyconn;
}
