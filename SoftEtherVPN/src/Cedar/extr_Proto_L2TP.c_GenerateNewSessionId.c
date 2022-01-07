
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int L2TP_TUNNEL ;


 int GenerateNewSessionIdEx (int *,int) ;

UINT GenerateNewSessionId(L2TP_TUNNEL *t)
{
 return GenerateNewSessionIdEx(t, 0);
}
