
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int stub_state_push_array (void*,int ) ;

__attribute__((used)) static int stub_read_array_start(uint32_t size, void *data)
{
 stub_state_push_array(data, size);
 return 0;
}
