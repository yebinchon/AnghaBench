
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POLICY ;
typedef int PACK ;


 int Copy (int *,int *,int) ;
 int Free (int *) ;
 int * PackGetPolicy (int *) ;

void InRpcPolicy(POLICY *o, PACK *p)
{
 POLICY *pol;

 if (o == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 pol = PackGetPolicy(p);
 Copy(o, pol, sizeof(POLICY));
 Free(pol);
}
