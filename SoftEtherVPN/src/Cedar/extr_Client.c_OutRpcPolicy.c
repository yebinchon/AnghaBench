
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POLICY ;
typedef int PACK ;


 int PackAddPolicy (int *,int *) ;

void OutRpcPolicy(PACK *p, POLICY *o)
{

 if (o == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddPolicy(p, o);
}
