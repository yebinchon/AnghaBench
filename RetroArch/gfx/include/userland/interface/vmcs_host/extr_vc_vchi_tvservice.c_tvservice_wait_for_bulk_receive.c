
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {int * client_handle; } ;


 int VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 int VCOS_FUNCTION ;
 TYPE_1__ tvservice_client ;
 int vchi_bulk_queue_receive (int ,void*,int ,int ,int *) ;
 int vcos_log_error (char*) ;
 int vcos_log_trace (char*,int ) ;
 int vcos_verify (void*) ;

__attribute__((used)) static int32_t tvservice_wait_for_bulk_receive(void *buffer, uint32_t max_length) {


   vcos_log_trace("[%s]", VCOS_FUNCTION);
   if(!vcos_verify(buffer)) {
      vcos_log_error("TV service: NULL buffer passed to wait_for_bulk_receive");
      return -1;
   }

   return vchi_bulk_queue_receive( tvservice_client.client_handle[0],
                                   buffer,
                                   max_length,
                                   VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE,
                                   ((void*)0) );
}
