
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_LINK_KEY_CALLBACK ;
struct TYPE_3__ {int * p_link_key_callback; } ;
struct TYPE_4__ {TYPE_1__ api; } ;
typedef int BOOLEAN ;


 int TRUE ;
 TYPE_2__ btm_cb ;

BOOLEAN BTM_SecRegisterLinkKeyNotificationCallback (tBTM_LINK_KEY_CALLBACK *p_callback)
{
    btm_cb.api.p_link_key_callback = p_callback;
    return TRUE;
}
