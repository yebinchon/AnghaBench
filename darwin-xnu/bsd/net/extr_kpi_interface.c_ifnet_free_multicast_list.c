
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ifmultiaddr_t ;


 int FREE (int **,int ) ;
 int M_TEMP ;
 int ifmaddr_release (int *) ;

void
ifnet_free_multicast_list(ifmultiaddr_t *addresses)
{
 int i;

 if (addresses == ((void*)0))
  return;

 for (i = 0; addresses[i] != ((void*)0); i++)
  ifmaddr_release(addresses[i]);

 FREE(addresses, M_TEMP);
}
