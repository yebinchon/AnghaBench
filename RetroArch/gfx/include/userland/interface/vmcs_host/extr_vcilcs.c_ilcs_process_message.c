
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ data; } ;
typedef TYPE_1__ VCHIQ_HEADER_T ;
struct TYPE_9__ {int msg_inuse; int * msg; int vchiq; int service; int queue; } ;
typedef TYPE_2__ ILCS_SERVICE_T ;


 int ILCS_MSG_INUSE_MASK ;
 scalar_t__ IL_RESPONSE ;
 scalar_t__ IL_SERVICE_QUIT ;
 scalar_t__ UINT32 (unsigned char*) ;
 int ilcs_command (TYPE_2__*,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int ilcs_response (TYPE_2__*,scalar_t__,unsigned char*,scalar_t__) ;
 int memcpy (int ,unsigned char*,scalar_t__) ;
 int vchiq_release_message (int ,TYPE_1__*) ;
 scalar_t__ vchiu_queue_is_empty (int *) ;
 TYPE_1__* vchiu_queue_pop (int *) ;
 int vcos_assert (int ) ;

__attribute__((used)) static int ilcs_process_message(ILCS_SERVICE_T *st, int block)
{
   unsigned char *msg;
   VCHIQ_HEADER_T *header;
   uint32_t i, msg_len, cmd, xid;

   if(!block && vchiu_queue_is_empty(&st->queue))
      return 0;

   header = vchiu_queue_pop(&st->queue);

   msg = (unsigned char *) header->data;

   cmd = UINT32(msg);
   xid = UINT32(msg+4);

   msg += 8;
   msg_len = header->size - 8;

   if(cmd == IL_RESPONSE)
   {
      ilcs_response(st, xid, msg, msg_len);



      vchiq_release_message(st->vchiq, header);

   }
   else if(cmd == IL_SERVICE_QUIT)
   {
      return 1;
   }
   else
   {

      if(st->msg_inuse == ILCS_MSG_INUSE_MASK)
      {




         vcos_assert(0);
         return 1;
      }

      i = 0;
      while(st->msg_inuse & (1<<i))
         i++;

      st->msg_inuse |= (1<<i);

      memcpy(st->msg[i], msg, msg_len);



      vchiq_release_message(st->vchiq, header);

      ilcs_command(st, cmd, xid, st->msg[i], msg_len);


      st->msg_inuse &= ~(1<<i);
   }

   return 1;
}
