
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int ACCESS ;


 int InRpcAccessEx (int *,int *,int ) ;

void InRpcAccess(ACCESS *a, PACK *p)
{

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 InRpcAccessEx(a, p, 0);
}
