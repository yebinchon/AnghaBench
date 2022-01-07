
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int CAPSLIST ;


 int GSF_DISABLE_AC ;
 int GSF_DISABLE_CERT_AUTH ;
 int GSF_DISABLE_DEEP_LOGGING ;
 int GSF_DISABLE_PUSH_ROUTE ;
 int GSF_DISABLE_RADIUS_AUTH ;
 int GSF_DISABLE_SYSLOG ;
 int SetGlobalServerFlag (int ,int) ;
 int SiIsEnterpriseFunctionsRestrictedOnOpenSource (int ) ;

void UpdateGlobalServerFlags(SERVER *s, CAPSLIST *t)
{
 bool is_restricted = 0;

 if (s == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 is_restricted = SiIsEnterpriseFunctionsRestrictedOnOpenSource(s->Cedar);

 SetGlobalServerFlag(GSF_DISABLE_PUSH_ROUTE, is_restricted);
 SetGlobalServerFlag(GSF_DISABLE_RADIUS_AUTH, is_restricted);
 SetGlobalServerFlag(GSF_DISABLE_CERT_AUTH, is_restricted);
 SetGlobalServerFlag(GSF_DISABLE_DEEP_LOGGING, is_restricted);
 SetGlobalServerFlag(GSF_DISABLE_AC, is_restricted);
 SetGlobalServerFlag(GSF_DISABLE_SYSLOG, is_restricted);
}
