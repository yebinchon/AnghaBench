
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gpu_callback_s {int cookie; int (* func ) (int ) ;} ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_REASON_T ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ VCHIQ_HEADER_T ;



 int stub1 (int ) ;
 int vchiq_release_message (int ,TYPE_1__*) ;

__attribute__((used)) static VCHIQ_STATUS_T gpuserv_callback( VCHIQ_REASON_T reason,
                                        VCHIQ_HEADER_T *header,
                                        VCHIQ_SERVICE_HANDLE_T service,
                                        void *bulk_userdata )
{

   switch (reason)
   {
      case 128:
      {
         struct gpu_callback_s *c = (struct gpu_callback_s *)header->data;
         if (c->func)
            c->func(c->cookie);
         vchiq_release_message(service, header);
         break;
      }
      default:
        ;
   }
   return 0;
}
