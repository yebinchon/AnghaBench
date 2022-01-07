
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ifaddr_t ;


 int FREE (int **,int ) ;
 int IFA_REMREF (int *) ;
 int M_TEMP ;

void
ifnet_free_address_list(ifaddr_t *addresses)
{
 int i;

 if (addresses == ((void*)0))
  return;

 for (i = 0; addresses[i] != ((void*)0); i++)
  IFA_REMREF(addresses[i]);

 FREE(addresses, M_TEMP);
}
