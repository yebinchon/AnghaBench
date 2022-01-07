
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bt_bdaddr_t ;
struct TYPE_2__ {int const address; int readable; } ;


 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static const bt_bdaddr_t *get_address(void)
{
    assert(controller_param.readable);
    return &controller_param.address;
}
