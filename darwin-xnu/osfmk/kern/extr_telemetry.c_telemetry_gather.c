
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
typedef int boolean_t ;


 int telemetry_buffer ;
 int telemetry_buffer_gather (int ,int *,int ,int *) ;

int telemetry_gather(user_addr_t buffer, uint32_t *length, boolean_t mark)
{
 return telemetry_buffer_gather(buffer, length, mark, &telemetry_buffer);
}
