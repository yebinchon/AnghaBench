
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int * list_free; int * list_pending; } ;
struct TYPE_7__ {scalar_t__ media_time_at_timer; int clock; TYPE_1__ request; } ;
struct TYPE_6__ {int link; int priv; int cb_data; int (* cb ) (int *,int ,int ,int ) ;} ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_LIST_T ;
typedef TYPE_2__ MMAL_CLOCK_REQUEST_T ;
typedef TYPE_3__ MMAL_CLOCK_PRIVATE_T ;


 int MMAL_SUCCESS ;
 scalar_t__ mmal_list_pop_front (int *) ;
 int mmal_list_push_back (int *,int *) ;
 int stub1 (int *,int ,int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T mmal_clock_request_flush_locked(MMAL_CLOCK_PRIVATE_T *private,
                                                     int64_t media_time)
{
   MMAL_LIST_T *pending = private->request.list_pending;
   MMAL_LIST_T *list_free = private->request.list_free;
   MMAL_CLOCK_REQUEST_T *request;

   while ((request = (MMAL_CLOCK_REQUEST_T *)mmal_list_pop_front(pending)) != ((void*)0))
   {

      request->cb(&private->clock, media_time, request->cb_data, request->priv);

      mmal_list_push_back(list_free, &request->link);
   }

   private->media_time_at_timer = 0;

   return MMAL_SUCCESS;
}
