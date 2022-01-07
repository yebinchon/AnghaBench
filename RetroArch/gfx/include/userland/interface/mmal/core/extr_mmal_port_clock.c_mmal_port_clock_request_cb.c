
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {scalar_t__ user_data; } ;
typedef int MMAL_PORT_T ;
typedef int (* MMAL_PORT_CLOCK_REQUEST_CB ) (int *,int ,void*) ;
typedef int MMAL_CLOCK_VOID_FP ;
typedef TYPE_1__ MMAL_CLOCK_T ;



__attribute__((used)) static void mmal_port_clock_request_cb(MMAL_CLOCK_T* clock, int64_t media_time, void *cb_data, MMAL_CLOCK_VOID_FP cb)
{
   MMAL_PORT_CLOCK_REQUEST_CB cb_client = (MMAL_PORT_CLOCK_REQUEST_CB)cb;


   cb_client((MMAL_PORT_T*)clock->user_data, media_time, cb_data);
}
