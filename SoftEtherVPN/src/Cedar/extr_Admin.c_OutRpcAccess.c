
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int ACCESS ;


 int OutRpcAccessEx (int *,int *,int ,int) ;

void OutRpcAccess(PACK *p, ACCESS *a)
{

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 OutRpcAccessEx(p, a, 0, 1);
}
