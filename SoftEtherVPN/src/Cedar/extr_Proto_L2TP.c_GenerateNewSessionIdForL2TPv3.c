
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int L2TP_SERVER ;


 int Rand32 () ;
 int SearchL2TPSessionById (int *,int,int) ;

UINT GenerateNewSessionIdForL2TPv3(L2TP_SERVER *l2tp)
{

 if (l2tp == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  UINT id = Rand32();

  if (id == 0 || id == 0xffffffff)
  {
   continue;
  }

  if (SearchL2TPSessionById(l2tp, 1, id) == 0)
  {
   return id;
  }
 }
}
