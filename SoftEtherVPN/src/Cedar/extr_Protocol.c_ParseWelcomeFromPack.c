
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int POLICY ;
typedef int PACK ;


 int * PackGetPolicy (int *) ;
 int PackGetStr (int *,char*,char*,int ) ;

bool ParseWelcomeFromPack(PACK *p, char *session_name, UINT session_name_size,
        char *connection_name, UINT connection_name_size,
        POLICY **policy)
{

 if (p == ((void*)0) || session_name == ((void*)0) || connection_name == ((void*)0) || policy == ((void*)0))
 {
  return 0;
 }


 if (PackGetStr(p, "session_name", session_name, session_name_size) == 0)
 {
  return 0;
 }


 if (PackGetStr(p, "connection_name", connection_name, connection_name_size) == 0)
 {
  return 0;
 }


 *policy = PackGetPolicy(p);
 if (*policy == ((void*)0))
 {
  return 0;
 }

 return 1;
}
