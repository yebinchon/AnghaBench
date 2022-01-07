
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int abort_with_payload_wrapper_internal (int ,int ,void*,int ,char const*,int ) ;

void
abort_with_payload(uint32_t reason_namespace, uint64_t reason_code, void *payload,
   uint32_t payload_size, const char *reason_string,
                        uint64_t reason_flags)
{
 abort_with_payload_wrapper_internal(reason_namespace, reason_code, payload, payload_size,
   reason_string, reason_flags);
}
