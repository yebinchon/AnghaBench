
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {char* bd_name; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 TYPE_2__ btm_cb ;

tBTM_STATUS BTM_ReadLocalDeviceName (char **p_name)
{




    *p_name = ((void*)0);
    return (BTM_NO_RESOURCES);

}
