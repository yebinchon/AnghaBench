
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int os_reason_t ;


 int TRUE ;
 int os_reason_alloc_buffer_internal (int ,int ,int ) ;

int
os_reason_alloc_buffer(os_reason_t cur_reason, uint32_t osr_bufsize)
{
 return os_reason_alloc_buffer_internal(cur_reason, osr_bufsize, TRUE);
}
