
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int TicketList; } ;
struct TYPE_7__ {int Policy; int GroupName; int SessionName; int UsernameReal; int Username; int Ticket; } ;
typedef TYPE_1__ TICKET ;
typedef int POLICY ;
typedef TYPE_2__ HUB ;


 scalar_t__ Cmp (int ,int *,int ) ;
 int Copy (int *,int *,int) ;
 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int SHA1_SIZE ;
 int StrCpy (char*,scalar_t__,int ) ;
 int UnlockList (int ) ;

bool SiCheckTicket(HUB *h, UCHAR *ticket, char *username, UINT username_size, char *usernamereal, UINT usernamereal_size, POLICY *policy, char *sessionname, UINT sessionname_size, char *groupname, UINT groupname_size)
{
 bool ret = 0;

 if (h == ((void*)0) || ticket == ((void*)0) || username == ((void*)0) || usernamereal == ((void*)0) || policy == ((void*)0) || sessionname == ((void*)0))
 {
  return 0;
 }

 LockList(h->TicketList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(h->TicketList);i++)
  {
   TICKET *t = LIST_DATA(h->TicketList, i);
   if (Cmp(t->Ticket, ticket, SHA1_SIZE) == 0)
   {
    ret = 1;
    StrCpy(username, username_size, t->Username);
    StrCpy(usernamereal, usernamereal_size, t->UsernameReal);
    StrCpy(sessionname, sessionname_size, t->SessionName);
    StrCpy(groupname, groupname_size, t->GroupName);
    Copy(policy, &t->Policy, sizeof(POLICY));
    Delete(h->TicketList, t);
    Free(t);
    break;
   }
  }
 }
 UnlockList(h->TicketList);

 return ret;
}
