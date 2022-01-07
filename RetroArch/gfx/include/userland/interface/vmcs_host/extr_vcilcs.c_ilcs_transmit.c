
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xid ;
typedef unsigned char const uint32_t ;
typedef int int32_t ;
typedef int cmd ;
struct TYPE_5__ {unsigned char const* data; int size; } ;
typedef TYPE_1__ VCHIQ_ELEMENT_T ;
struct TYPE_6__ {int fourcc; int vchiq; int service; } ;
typedef TYPE_2__ ILCS_SERVICE_T ;


 int vchiq_queue_message (int ,TYPE_1__*,...) ;

__attribute__((used)) static void ilcs_transmit(ILCS_SERVICE_T *st, uint32_t cmd, uint32_t xid,
                          const unsigned char *msg, int len,
                          const unsigned char *msg2, int len2)
{
   VCHIQ_ELEMENT_T vec[4];
   int32_t count = 3;

   vec[0].data = &cmd;
   vec[0].size = sizeof(cmd);
   vec[1].data = &xid;
   vec[1].size = sizeof(xid);
   vec[2].data = msg;
   vec[2].size = len;

   if(msg2)
   {
      vec[3].data = msg2;
      vec[3].size = len2;
      count++;
   }




   vchiq_queue_message(st->vchiq, st->fourcc, vec, count);

}
