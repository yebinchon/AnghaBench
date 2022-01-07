
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int wait_mtx; TYPE_1__* wait; } ;
struct TYPE_4__ {scalar_t__ xid; int* rlen; int event; scalar_t__ resp; } ;
typedef TYPE_1__ ILCS_WAIT_T ;
typedef TYPE_2__ ILCS_SERVICE_T ;


 int ILCS_MAX_WAITING ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int vcos_assert (int ) ;
 int vcos_event_signal (int *) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void ilcs_response(ILCS_SERVICE_T *st, uint32_t xid, const unsigned char *msg, int len)
{
   ILCS_WAIT_T *wait = ((void*)0);
   int i, copy = len;


   vcos_mutex_lock(&st->wait_mtx);
   for (i=0; i<ILCS_MAX_WAITING; i++) {
      wait = &st->wait[i];
      if(wait->resp && wait->xid == xid)
         break;
   }
   vcos_mutex_unlock(&st->wait_mtx);

   if(i == ILCS_MAX_WAITING) {


      vcos_assert(0);
      return;
   }



   if(len > *wait->rlen)
      copy = *wait->rlen;

   *wait->rlen = len;


   memcpy(wait->resp, msg, copy);

   vcos_event_signal(&wait->event);
}
