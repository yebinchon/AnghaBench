
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_4__ {scalar_t__ user_data; } ;
typedef TYPE_1__ MMAL_CONNECTION_T ;
typedef TYPE_2__ MMALPLAY_T ;


 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void mmalplay_connection_cb(MMAL_CONNECTION_T *connection)
{
   MMALPLAY_T *ctx = (MMALPLAY_T *)connection->user_data;
   vcos_semaphore_post(&ctx->event);
}
