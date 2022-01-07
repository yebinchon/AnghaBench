
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int AddAllChainCertsToCertList (int *) ;
 int AddAllRootCertsToCertList (int *) ;
 int * NewList (int *) ;

LIST *NewCertList(bool load_root_and_chain)
{
 LIST *o;

 o = NewList(((void*)0));

 if (load_root_and_chain)
 {
  AddAllRootCertsToCertList(o);
  AddAllChainCertsToCertList(o);
 }

 return o;
}
