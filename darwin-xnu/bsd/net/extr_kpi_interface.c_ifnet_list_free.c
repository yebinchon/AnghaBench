
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ifnet_t ;


 int FREE (scalar_t__*,int ) ;
 int M_TEMP ;
 int ifnet_release (scalar_t__) ;

void
ifnet_list_free(ifnet_t *interfaces)
{
 int i;

 if (interfaces == ((void*)0))
  return;

 for (i = 0; interfaces[i]; i++)
  ifnet_release(interfaces[i]);

 FREE(interfaces, M_TEMP);
}
