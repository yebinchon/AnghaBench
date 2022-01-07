
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int username ;
typedef int ticket_str ;
typedef int sessionname ;
typedef int realusername ;
typedef int hubname ;
typedef int groupname ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_15__ {int * TicketList; } ;
struct TYPE_14__ {int Cedar; } ;
struct TYPE_13__ {scalar_t__ CreatedTick; int SessionName; int GroupName; int UsernameReal; int Username; int * Ticket; int Policy; } ;
typedef TYPE_1__ TICKET ;
typedef TYPE_2__ SERVER ;
typedef int POLICY ;
typedef int PACK ;
typedef int LIST ;
typedef TYPE_3__ HUB ;


 int Add (int *,TYPE_1__*) ;
 int BinToStr (char*,int,int *,int) ;
 int Copy (int *,int *,int) ;
 int Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_3__* GetHub (int ,char*) ;
 int InRpcPolicy (int *,int *) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int MAX_SESSION_NAME_LEN ;
 int MAX_SIZE ;
 int * NewListFast (int *) ;
 int * NewPack () ;
 int PackAddInt (int *,char*,int ) ;
 int PackGetData (int *,char*,int *) ;
 int PackGetDataSize (int *,char*) ;
 int PackGetStr (int *,char*,char*,int) ;
 int ReleaseHub (TYPE_3__*) ;
 int ReleaseList (int *) ;
 int SHA1_SIZE ;
 int SLog (int ,char*,char*,char*,char*,char*,char*,int) ;
 int SiGetPoint (TYPE_2__*) ;
 int StrCpy (int ,int,char*) ;
 int TICKET_EXPIRES ;
 scalar_t__ Tick64 () ;
 int UnlockList (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

PACK *SiCalledCreateTicket(SERVER *s, PACK *p)
{
 char username[MAX_SIZE];
 char hubname[MAX_SIZE];
 char groupname[MAX_SIZE];
 char realusername[MAX_SIZE];
 char sessionname[MAX_SESSION_NAME_LEN + 1];
 POLICY policy;
 UCHAR ticket[SHA1_SIZE];
 char ticket_str[MAX_SIZE];
 HUB *h;
 UINT i;
 PACK *ret;
 TICKET *t;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return NewPack();
 }

 PackGetStr(p, "UserName", username, sizeof(username));
 PackGetStr(p, "GroupName", groupname, sizeof(groupname));
 PackGetStr(p, "HubName", hubname, sizeof(hubname));
 PackGetStr(p, "RealUserName", realusername, sizeof(realusername));
 PackGetStr(p, "SessionName", sessionname, sizeof(sessionname));

 InRpcPolicy(&policy, p);
 if (PackGetDataSize(p, "Ticket") == SHA1_SIZE)
 {
  PackGetData(p, "Ticket", ticket);
 }

 BinToStr(ticket_str, sizeof(ticket_str), ticket, SHA1_SIZE);

 SLog(s->Cedar, "LS_TICKET_2", hubname, username, realusername, sessionname,
  ticket_str, TICKET_EXPIRES / 1000);


 h = GetHub(s->Cedar, hubname);
 if (h == ((void*)0))
 {
  return NewPack();
 }

 LockList(h->TicketList);
 {
  LIST *o = NewListFast(((void*)0));

  for (i = 0;i < LIST_NUM(h->TicketList);i++)
  {
   TICKET *t = LIST_DATA(h->TicketList, i);
   if ((t->CreatedTick + TICKET_EXPIRES) < Tick64())
   {
    Add(o, t);
   }
  }
  for (i = 0;i < LIST_NUM(o);i++)
  {
   TICKET *t = LIST_DATA(o, i);
   Delete(h->TicketList, t);
   Free(t);
  }
  ReleaseList(o);


  t = ZeroMalloc(sizeof(TICKET));
  t->CreatedTick = Tick64();
  Copy(&t->Policy, &policy, sizeof(POLICY));
  Copy(t->Ticket, ticket, SHA1_SIZE);
  StrCpy(t->Username, sizeof(t->Username), username);
  StrCpy(t->UsernameReal, sizeof(t->UsernameReal), realusername);
  StrCpy(t->GroupName, sizeof(t->GroupName), groupname);
  StrCpy(t->SessionName, sizeof(t->SessionName), sessionname);

  Add(h->TicketList, t);
 }
 UnlockList(h->TicketList);

 ReleaseHub(h);

 ret = NewPack();

 PackAddInt(ret, "Point", SiGetPoint(s));

 return ret;
}
