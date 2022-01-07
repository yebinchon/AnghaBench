
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int user_name_upper ;
typedef int tmp ;
typedef int rand ;
typedef int pc_name ;
typedef int name ;
typedef int machine ;
typedef int hub_name_upper ;
typedef void* UCHAR ;
struct TYPE_24__ {TYPE_14__* Server; } ;
struct TYPE_23__ {char* InProcPrefix; int ref; TYPE_1__* Thread; } ;
struct TYPE_22__ {char* Name; int SessionCounter; scalar_t__ IsVgsSuperRelayHub; scalar_t__ IsVgsHub; } ;
struct TYPE_21__ {int ServerMode; int InProcMode; int* IpcMacAddress; int UniqueId; int SessionKey32; int SessionKey; int * Policy; int Name; TYPE_5__* Connection; int PacketAdapter; int DelayedPacketList; int ClientStatus; TYPE_4__* Hub; TYPE_1__* Thread; int QoS; void* OldTraffic; void* TrafficLock; int CancelList; int Cancel1; int HaltEvent; void* Traffic; int LastCommTime; int CreatedTime; TYPE_6__* Cedar; int ref; void* lock; int LoggingRecordCount; } ;
struct TYPE_20__ {int NumTokens; char** Token; } ;
struct TYPE_19__ {int ref; } ;
struct TYPE_18__ {scalar_t__ ServerType; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ SESSION ;
typedef int POLICY ;
typedef TYPE_4__ HUB ;
typedef TYPE_5__ CONNECTION ;
typedef TYPE_6__ CEDAR ;


 int ADMINISTRATOR_USERNAME ;
 int AddRef (int ) ;
 int AddSession (TYPE_4__*,TYPE_3__*) ;
 int BRIDGE_USER_NAME ;
 int BinToStr (char*,int,void**,int) ;
 int CLIENT_STATUS_ESTABLISHED ;
 int Copy (int*,void**,int) ;
 int CopyStr (char*) ;
 int Debug (char*,char*) ;
 int Format (char*,int,char*,char*,char*,...) ;
 int FreeToken (TYPE_2__*) ;
 int GetHubPacketAdapter () ;
 int GetMachineName (char*,int) ;
 int GetServerCapsBool (TYPE_14__*,char*) ;
 int Inc (int ) ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int MAX_USERNAME_LEN ;
 int MacToStr (char*,int,int*) ;
 int NewCancel () ;
 int NewCancelList () ;
 int NewCounter () ;
 int NewEvent () ;
 int NewList (int *) ;
 void* NewLock () ;
 int NewRef () ;
 int NewSessionKey (TYPE_6__*,int ,int *) ;
 void* NewTraffic () ;
 TYPE_2__* ParseToken (char*,char*) ;
 int Rand (void**,int) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SHA1_SIZE ;
 int Sha0 (void**,char*,int ) ;
 int StrCat (char*,int,char*) ;
 scalar_t__ StrCmpi (char*,int ) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrUpper (char*) ;
 int Tick64 () ;
 int Trim (char*) ;
 TYPE_3__* ZeroMalloc (int) ;

SESSION *NewServerSessionEx(CEDAR *cedar, CONNECTION *c, HUB *h, char *username, POLICY *policy, bool inproc_mode, UCHAR *ipc_mac_address)
{
 SESSION *s;
 char name[MAX_SIZE];
 char hub_name_upper[MAX_SIZE];
 char user_name_upper[MAX_USERNAME_LEN + 1];

 if (cedar == ((void*)0) || c == ((void*)0) || h == ((void*)0) || username == ((void*)0) || policy == ((void*)0))
 {
  return ((void*)0);
 }


 s = ZeroMalloc(sizeof(SESSION));

 s->LoggingRecordCount = NewCounter();
 s->lock = NewLock();
 s->ref = NewRef();
 s->Cedar = cedar;
 s->ServerMode = 1;
 s->CreatedTime = s->LastCommTime = Tick64();
 s->Traffic = NewTraffic();
 s->HaltEvent = NewEvent();
 s->Cancel1 = NewCancel();
 s->CancelList = NewCancelList();
 s->Thread = c->Thread;
 s->TrafficLock = NewLock();
 s->OldTraffic = NewTraffic();
 s->QoS = GetServerCapsBool(cedar->Server, "b_support_qos");
 AddRef(s->Thread->ref);
 s->Hub = h;
 s->ClientStatus = CLIENT_STATUS_ESTABLISHED;


 s->DelayedPacketList = NewList(((void*)0));


 s->PacketAdapter = GetHubPacketAdapter();

 s->Connection = c;
 AddRef(c->ref);


 StrCpy(hub_name_upper, sizeof(hub_name_upper), h->Name);
 StrUpper(hub_name_upper);
 StrCpy(user_name_upper, sizeof(user_name_upper), username);
 StrUpper(user_name_upper);

 if ((StrCmpi(username, ADMINISTRATOR_USERNAME) != 0) && (StrCmpi(username, BRIDGE_USER_NAME) != 0) || (cedar->Server == ((void*)0) || cedar->Server->ServerType == SERVER_TYPE_STANDALONE))
 {
  if (IsEmptyStr(c->InProcPrefix))
  {
   Format(name, sizeof(name), "SID-%s-%u", user_name_upper, Inc(h->SessionCounter));
  }
  else
  {
   Format(name, sizeof(name), "SID-%s-[%s]-%u", user_name_upper, c->InProcPrefix, Inc(h->SessionCounter));
  }

  if (h->IsVgsHub || h->IsVgsSuperRelayHub)
  {
   UCHAR rand[5];
   char tmp[32];

   Rand(rand, sizeof(rand));

   BinToStr(tmp, sizeof(tmp), rand, sizeof(rand));

   StrCat(name, sizeof(name), "-");
   StrCat(name, sizeof(name), tmp);
  }
 }
 else
 {
  UCHAR rand[SHA1_SIZE];
  char tmp[MAX_SIZE];
  Rand(rand, sizeof(rand));
  BinToStr(tmp, sizeof(tmp), rand, 3);

  if (StrCmpi(username, BRIDGE_USER_NAME) != 0)
  {
   Format(name, sizeof(name), "SID-%s-%s", user_name_upper,
    tmp);
  }
  else
  {
   char pc_name[MAX_SIZE];
   TOKEN_LIST *t;

   GetMachineName(tmp, sizeof(tmp));
   t = ParseToken(tmp, ".");
   if (t->NumTokens >= 1)
   {
    StrCpy(pc_name, sizeof(pc_name), t->Token[0]);
   }
   else
   {
    StrCpy(pc_name, sizeof(pc_name), "pc");
   }
   FreeToken(t);

   StrUpper(pc_name);

   Format(name, sizeof(name), "SID-%s-%s-%u", user_name_upper, pc_name,
    Inc(h->SessionCounter));
  }
 }

 s->Name = CopyStr(name);
 s->Policy = policy;
 s->InProcMode = inproc_mode;


 AddSession(h, s);


 NewSessionKey(cedar, s->SessionKey, &s->SessionKey32);


 if (s->InProcMode)
 {
  if (ipc_mac_address != ((void*)0))
  {
   Copy(s->IpcMacAddress, ipc_mac_address, 6);
  }
  else
  {
   char tmp[MAX_SIZE];
   char machine[MAX_SIZE];
   UCHAR hash[SHA1_SIZE];

   GetMachineName(machine, sizeof(machine));

   Format(tmp, sizeof(tmp), "%s@%s@%u", machine, h->Name, s->UniqueId);

   StrUpper(tmp);
   Trim(tmp);

   Sha0(hash, tmp, StrLen(tmp));

   s->IpcMacAddress[0] = 0xCA;
   s->IpcMacAddress[1] = hash[1];
   s->IpcMacAddress[2] = hash[2];
   s->IpcMacAddress[3] = hash[3];
   s->IpcMacAddress[4] = hash[4];
   s->IpcMacAddress[5] = hash[5];

   MacToStr(tmp, sizeof(tmp), s->IpcMacAddress);
   Debug("MAC Address for IPC: %s\n", tmp);
  }
 }

 return s;
}
