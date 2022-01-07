
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bt_version_t ;
struct TYPE_2__ {int const bt_version; int readable; } ;


 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static const bt_version_t *get_bt_version(void)
{
    assert(controller_param.readable);
    return &controller_param.bt_version;
}
