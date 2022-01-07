
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; char* data; } ;
typedef TYPE_2__ VCHIQ_HEADER_T ;
struct TYPE_8__ {int wait_event; TYPE_1__* wait; int queue; scalar_t__ header_array; } ;
struct TYPE_6__ {int event; scalar_t__ resp; } ;
typedef TYPE_3__ ILCS_SERVICE_T ;


 int ILCS_MAX_WAITING ;
 int IL_SERVICE_QUIT ;
 int vchiu_queue_push (int *,TYPE_2__*) ;
 int vcos_event_signal (int *) ;

__attribute__((used)) static void ilcs_send_quit(ILCS_SERVICE_T *st)
{

   VCHIQ_HEADER_T *header = (VCHIQ_HEADER_T *)st->header_array;
   char *msg;
   int i;
   header->size = 8;
   msg = header->data;
   msg[0] = IL_SERVICE_QUIT & 0xff;
   msg[1] = (IL_SERVICE_QUIT >> 8) & 0xff;
   msg[2] = (IL_SERVICE_QUIT >> 16) & 0xff;
   msg[3] = IL_SERVICE_QUIT >> 24;

   vchiu_queue_push(&st->queue, header);


   for(i=0; i<ILCS_MAX_WAITING; i++)
      if(st->wait[i].resp)
         vcos_event_signal(&st->wait[i].event);

   vcos_event_signal(&st->wait_event);
}
