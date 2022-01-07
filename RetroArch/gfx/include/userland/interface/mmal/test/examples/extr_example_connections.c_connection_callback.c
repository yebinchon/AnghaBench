
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct CONTEXT_T {int semaphore; } ;
struct TYPE_3__ {scalar_t__ user_data; } ;
typedef TYPE_1__ MMAL_CONNECTION_T ;


 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void connection_callback(MMAL_CONNECTION_T *connection)
{
   struct CONTEXT_T *ctx = (struct CONTEXT_T *)connection->user_data;


   vcos_semaphore_post(&ctx->semaphore);
}
