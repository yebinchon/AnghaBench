
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_2__* ifnet_t ;
struct TYPE_4__ {int ifi_addrlen; } ;
struct TYPE_5__ {TYPE_1__ if_data; } ;



u_char
ifnet_addrlen(ifnet_t interface)
{
 return ((interface == ((void*)0)) ? 0 : interface->if_data.ifi_addrlen);
}
