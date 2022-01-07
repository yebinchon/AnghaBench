
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SERVER ;


 scalar_t__ FARM_BASE_POINT ;
 int GetServerCapsInt (int *,char*) ;
 double MIN (double,double) ;
 int SERVER_MAX_SESSIONS ;

UINT SiCalcPoint(SERVER *s, UINT num, UINT weight)
{
 UINT server_max_sessions = SERVER_MAX_SESSIONS;
 if (s == ((void*)0))
 {
  return 0;
 }
 if (weight == 0)
 {
  weight = 100;
 }

 server_max_sessions = GetServerCapsInt(s, "i_max_sessions");

 if (server_max_sessions == 0)
 {

  server_max_sessions = 1;
 }

 return (UINT)(((double)server_max_sessions -
  MIN((double)num * 100.0 / (double)weight, (double)server_max_sessions))
  * (double)FARM_BASE_POINT / (double)server_max_sessions);
}
