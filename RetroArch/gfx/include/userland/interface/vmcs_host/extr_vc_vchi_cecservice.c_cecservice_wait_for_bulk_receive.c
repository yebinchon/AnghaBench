
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {int * client_handle; } ;


 int VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 TYPE_1__ cecservice_client ;
 int vc_cec_log_error (char*) ;
 int vchi2service_status (int ) ;
 int vchi_bulk_queue_receive (int ,void*,int ,int ,int *) ;
 int vcos_verify (void*) ;

__attribute__((used)) static int32_t cecservice_wait_for_bulk_receive(void *buffer, uint32_t max_length) {
   if(!vcos_verify(buffer)) {
      vc_cec_log_error("CEC: NULL buffer passed to wait_for_bulk_receive");
      return -1;
   }
   return (int32_t) vchi2service_status(vchi_bulk_queue_receive( cecservice_client.client_handle[0],
                                                                 buffer,
                                                                 max_length,
                                                                 VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE,
                                                                 ((void*)0) ));
}
