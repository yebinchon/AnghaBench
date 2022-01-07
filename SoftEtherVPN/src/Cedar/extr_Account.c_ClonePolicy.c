
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POLICY ;


 int Copy (int *,int *,int) ;
 int * ZeroMalloc (int) ;

POLICY *ClonePolicy(POLICY *policy)
{
 POLICY *ret;

 if (policy == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(POLICY));
 Copy(ret, policy, sizeof(POLICY));

 return ret;
}
