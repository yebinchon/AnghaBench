
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int user_name_upper ;
typedef int ticket_str ;
typedef int name ;
typedef int hub_name_upper ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int NumSessions; scalar_t__ Point; int hostname; } ;
struct TYPE_6__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int POLICY ;
typedef int PACK ;
typedef TYPE_2__ FARM_MEMBER ;


 int BinToStr (char*,int,int *,int ) ;
 int Format (char*,int,char*,char*,scalar_t__) ;
 int FreePack (int *) ;
 int MAX_SESSION_NAME_LEN ;
 int MAX_SIZE ;
 int MAX_USERNAME_LEN ;
 int * NewPack () ;
 int OutRpcPolicy (int *,int *) ;
 int PackAddData (int *,char*,int *,int ) ;
 int PackAddStr (int *,char*,char*) ;
 scalar_t__ PackGetInt (int *,char*) ;
 int SHA1_SIZE ;
 int SLog (int ,char*,int ,char*,char*,char*,char*,char*) ;
 int * SiCallTask (TYPE_2__*,int *,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrUpper (char*) ;

void SiCallCreateTicket(SERVER *s, FARM_MEMBER *f, char *hubname, char *username, char *realusername, POLICY *policy, UCHAR *ticket, UINT counter, char *groupname)
{
 PACK *p;
 char name[MAX_SESSION_NAME_LEN + 1];
 char hub_name_upper[MAX_SIZE];
 char user_name_upper[MAX_USERNAME_LEN + 1];
 char ticket_str[MAX_SIZE];
 UINT point;

 if (s == ((void*)0) || f == ((void*)0) || realusername == ((void*)0) || hubname == ((void*)0) || username == ((void*)0) || policy == ((void*)0) || ticket == ((void*)0))
 {
  return;
 }
 if (groupname == ((void*)0))
 {
  groupname = "";
 }

 p = NewPack();
 PackAddStr(p, "HubName", hubname);
 PackAddStr(p, "UserName", username);
 PackAddStr(p, "groupname", groupname);
 PackAddStr(p, "RealUserName", realusername);
 OutRpcPolicy(p, policy);
 PackAddData(p, "Ticket", ticket, SHA1_SIZE);

 BinToStr(ticket_str, sizeof(ticket_str), ticket, SHA1_SIZE);

 StrCpy(hub_name_upper, sizeof(hub_name_upper), hubname);
 StrUpper(hub_name_upper);
 StrCpy(user_name_upper, sizeof(user_name_upper), username);
 StrUpper(user_name_upper);
 Format(name, sizeof(name), "SID-%s-%u", user_name_upper,
  counter);
 PackAddStr(p, "SessionName", name);

 p = SiCallTask(f, p, "createticket");

 SLog(s->Cedar, "LS_TICKET_1", f->hostname, hubname, username, realusername, name, ticket_str);

 point = PackGetInt(p, "Point");
 if (point != 0)
 {
  f->Point = point;
  f->NumSessions++;
 }

 FreePack(p);
}
