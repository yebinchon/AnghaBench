
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* list_pending; } ;
struct TYPE_13__ {scalar_t__ scale; scalar_t__ stop_thread; TYPE_1__ request; } ;
struct TYPE_12__ {scalar_t__ media_time_adj; int link; } ;
struct TYPE_11__ {scalar_t__ length; scalar_t__ last; } ;
typedef TYPE_2__ MMAL_LIST_T ;
typedef TYPE_3__ MMAL_CLOCK_REQUEST_T ;
typedef TYPE_4__ MMAL_CLOCK_PRIVATE_T ;
typedef int MMAL_BOOL_T ;


 int MMAL_FALSE ;
 int MMAL_TRUE ;
 int mmal_clock_request_compare_neg ;
 int mmal_clock_request_compare_pos ;
 int mmal_list_insert (TYPE_2__*,int *,int ) ;
 int mmal_list_push_back (TYPE_2__*,int *) ;
 int mmal_list_push_front (TYPE_2__*,int *) ;

__attribute__((used)) static MMAL_BOOL_T mmal_clock_request_insert(MMAL_CLOCK_PRIVATE_T *private, MMAL_CLOCK_REQUEST_T *request)
{
   MMAL_LIST_T *list = private->request.list_pending;
   MMAL_CLOCK_REQUEST_T *pending;

   if (private->stop_thread)
      return MMAL_FALSE;

   if (list->length == 0)
   {
      mmal_list_push_front(list, &request->link);
      return MMAL_TRUE;
   }




   pending = (MMAL_CLOCK_REQUEST_T*)list->last;
   if ((private->scale >= 0 && (request->media_time_adj >= pending->media_time_adj)) ||
       (private->scale < 0 && (request->media_time_adj <= pending->media_time_adj)))
   {
      mmal_list_push_back(list, &request->link);
   }
   else
   {
      mmal_list_insert(list, &request->link,
            (private->scale >= 0) ? mmal_clock_request_compare_pos : mmal_clock_request_compare_neg);
   }
   return MMAL_TRUE;
}
