
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
struct TYPE_3__ {char const* if_name; } ;



const char *
ifnet_name(ifnet_t interface)
{
 return ((interface == ((void*)0)) ? ((void*)0) : interface->if_name);
}
