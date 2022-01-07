
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int sco_buffer_count; int readable; } ;


 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static uint8_t get_sco_buffer_count(void)
{
    assert(controller_param.readable);
    return controller_param.sco_buffer_count;
}
