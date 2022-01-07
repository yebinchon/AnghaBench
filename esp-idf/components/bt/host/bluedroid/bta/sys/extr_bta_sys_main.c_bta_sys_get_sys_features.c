
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int sys_features; } ;


 TYPE_1__ bta_sys_cb ;

UINT16 bta_sys_get_sys_features (void)
{
    return bta_sys_cb.sys_features;
}
