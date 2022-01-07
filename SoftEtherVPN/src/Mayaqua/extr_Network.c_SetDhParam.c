
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH_CTX ;


 int DhFree (int *) ;
 int * dh_param ;

void SetDhParam(DH_CTX *dh)
 {
 if (dh_param)
 {
   DhFree(dh_param);
  }

  dh_param = dh;
 }
