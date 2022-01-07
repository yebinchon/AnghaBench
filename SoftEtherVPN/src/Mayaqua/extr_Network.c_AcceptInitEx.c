
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int * RemoteHostname; int RemoteIP; } ;
typedef TYPE_1__ SOCK ;


 int * CopyStr (char*) ;
 int Free (int *) ;
 int GetHostName (char*,int,int *) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int Zero (char*,int) ;
 int disable_gethostname_by_accept ;

void AcceptInitEx(SOCK *s, bool no_lookup_hostname)
{
 char tmp[MAX_SIZE];

 if (s == ((void*)0))
 {
  return;
 }

 Zero(tmp, sizeof(tmp));

 if (disable_gethostname_by_accept == 0 && no_lookup_hostname == 0)
 {
  if (GetHostName(tmp, sizeof(tmp), &s->RemoteIP) == 0 ||
   IsEmptyStr(tmp))
  {
   IPToStr(tmp, sizeof(tmp), &s->RemoteIP);
  }
 }
 else
 {
  IPToStr(tmp, sizeof(tmp), &s->RemoteIP);
 }

 if (s->RemoteHostname != ((void*)0))
 {
  Free(s->RemoteHostname);
 }

 s->RemoteHostname = CopyStr(tmp);
}
