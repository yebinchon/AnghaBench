
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tmp ;
typedef int new_hostname ;
typedef int myip ;
typedef int client_ip_str ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int Size; int Data; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_8__ {char* NatT_Registered_IPAndPort; int NatT_Token_Ok; char* NatT_Token; int NatT_Register_Ok; scalar_t__ NatT_TranId; scalar_t__ Now; char* CurrentRegisterHostname; scalar_t__ NumChangedHostname; scalar_t__ NumChangedHostnameValueResetTick; char NatT_IP; int NatT_EnableSourceIpValidation; scalar_t__ NatT_SessionKey; scalar_t__ NatT_RegisterNextTick; int Interrupt; scalar_t__* NatTGlobalUdpPort; scalar_t__ NatT_RegisterFailNum; scalar_t__ NatT_GetTokenNextTick; int Lock; int HaltEvent; scalar_t__ NatT_GetTokenFailNum; scalar_t__ ServerMode; } ;
typedef TYPE_2__ RUDP_STACK ;
typedef int PACK ;
typedef int IP ;
typedef int BUF ;


 int AddInterrupt (int ,scalar_t__) ;
 int * BufToPack (int *) ;
 int ClearStr (char*,int) ;
 int Copy (char*,int ,int ) ;
 int Debug (char*,...) ;
 int ExtractAndApplyDynList (int *) ;
 int Free (int *) ;
 int FreeBuf (int *) ;
 int FreePack (int *) ;
 scalar_t__ GenRandInterval (int ,int ) ;
 int IsEmptyStr (char*) ;
 int IsZeroIp (int *) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int MIN (int,int) ;
 int * Malloc (scalar_t__) ;
 int * NewBuf () ;
 scalar_t__ PackCmpStr (int *,char*,char*) ;
 void* PackGetBool (int *,char*) ;
 scalar_t__ PackGetInt (int *,char*) ;
 scalar_t__ PackGetInt64 (int *,char*) ;
 scalar_t__ PackGetStr (int *,char*,char*,int) ;
 int RUDPAddIpToValidateList (TYPE_2__*,int *) ;
 int RUDPGetRegisterHostNameByIP (char*,int,int *) ;
 scalar_t__ RUDPParseIPAndPortStr (int ,int,int *,scalar_t__*) ;
 int RUDPSendPacket (TYPE_2__*,int *,scalar_t__,int *,scalar_t__,int ) ;
 scalar_t__ RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL ;
 scalar_t__ RUDP_NATT_MAX_CONT_CHANGE_HOSTNAME ;
 int Rand (int *,scalar_t__) ;
 int Rand32 () ;
 int SeekBuf (int *,int ,int ) ;
 int Set (int ) ;
 int SetCurrentGlobalIP (int *,int) ;
 scalar_t__ StartWith (char*,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrToIP (int *,char*) ;
 int UDP_NAT_T_GET_TOKEN_INTERVAL_2_MAX ;
 int UDP_NAT_T_GET_TOKEN_INTERVAL_2_MIN ;
 int UDP_NAT_T_REGISTER_INTERVAL_MAX ;
 int UDP_NAT_T_REGISTER_INTERVAL_MIN ;
 int Unlock (int ) ;
 int WriteBuf (int *,int ,int) ;
 int Zero (char*,int) ;
 int g_source_ip_validation_force_disable ;

void RUDPProcess_NatT_Recv(RUDP_STACK *r, UDPPACKET *udp)
{
 BUF *b;
 PACK *p;

 if (r == ((void*)0) || udp == ((void*)0))
 {
  return;
 }

 if (udp->Size >= 8)
 {
  char tmp[128];

  Zero(tmp, sizeof(tmp));
  Copy(tmp, udp->Data, MIN(udp->Size, sizeof(tmp) - 1));

  if (StartWith(tmp, "IP="))
  {
   IP my_ip;
   UINT my_port;


   if (IsEmptyStr(r->NatT_Registered_IPAndPort) == 0)
   {
    if (StrCmpi(r->NatT_Registered_IPAndPort, tmp) != 0)
    {

     ClearStr(r->NatT_Registered_IPAndPort, sizeof(r->NatT_Registered_IPAndPort));

     r->NatT_GetTokenNextTick = 0;
     r->NatT_GetTokenFailNum = 0;
     r->NatT_Token_Ok = 0;
     Zero(r->NatT_Token, sizeof(r->NatT_Token));

     r->NatT_RegisterNextTick = 0;
     r->NatT_RegisterFailNum = 0;
     r->NatT_Register_Ok = 0;
    }
   }

   if (RUDPParseIPAndPortStr(udp->Data, udp->Size, &my_ip, &my_port))
   {
    if (r->NatTGlobalUdpPort != ((void*)0))
    {
     *r->NatTGlobalUdpPort = my_port;
    }
   }

   return;
  }
 }


 b = NewBuf();
 WriteBuf(b, udp->Data, udp->Size);
 SeekBuf(b, 0, 0);

 p = BufToPack(b);

 if (p != ((void*)0))
 {
  bool is_ok = PackGetBool(p, "ok");
  UINT64 tran_id = PackGetInt64(p, "tran_id");

  ExtractAndApplyDynList(p);

  if (r->ServerMode)
  {
   if (PackCmpStr(p, "opcode", "get_token"))
   {

    if (is_ok && (tran_id == r->NatT_TranId))
    {
     char tmp[MAX_SIZE];

     if (PackGetStr(p, "token", tmp, sizeof(tmp)) && IsEmptyStr(tmp) == 0)
     {
      char myip[MAX_SIZE];

      StrCpy(r->NatT_Token, sizeof(r->NatT_Token), tmp);
      r->NatT_Token_Ok = 1;
      r->NatT_GetTokenNextTick = r->Now + (UINT64)GenRandInterval(UDP_NAT_T_GET_TOKEN_INTERVAL_2_MIN, UDP_NAT_T_GET_TOKEN_INTERVAL_2_MAX);
      r->NatT_GetTokenFailNum = 0;



      if (PackGetStr(p, "your_ip", myip, sizeof(myip)))
      {
       IP ip;
       char new_hostname[MAX_SIZE];

       StrToIP(&ip, myip);

       SetCurrentGlobalIP(&ip, 0);

       RUDPGetRegisterHostNameByIP(new_hostname,
        sizeof(new_hostname), &ip);

       Lock(r->Lock);
       {
        if (StrCmpi(r->CurrentRegisterHostname, new_hostname) != 0)
        {
         r->NumChangedHostname++;

         if (r->NumChangedHostname <= RUDP_NATT_MAX_CONT_CHANGE_HOSTNAME)
         {
          if (r->NumChangedHostnameValueResetTick == 0)
          {
           r->NumChangedHostnameValueResetTick = r->Now + (UINT64)RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL;
          }


          Debug("CurrentRegisterHostname Changed: New=%s\n", new_hostname);
          StrCpy(r->CurrentRegisterHostname, sizeof(r->CurrentRegisterHostname), new_hostname);

          Zero(&r->NatT_IP, sizeof(r->NatT_IP));


          Set(r->HaltEvent);
         }
         else
         {
          if (r->NumChangedHostnameValueResetTick == 0)
          {
           r->NumChangedHostnameValueResetTick = r->Now + (UINT64)RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL;
          }

          if (r->Now >= r->NumChangedHostnameValueResetTick)
          {
           r->NumChangedHostname = 0;
           r->NumChangedHostnameValueResetTick = 0;
          }
         }
        }
        else
        {
         r->NumChangedHostname = 0;
         r->NumChangedHostnameValueResetTick = 0;
        }
       }
       Unlock(r->Lock);
      }

      AddInterrupt(r->Interrupt, r->NatT_GetTokenNextTick);
     }
    }
   }
   else if (PackCmpStr(p, "opcode", "nat_t_register"))
   {

    if (is_ok && (tran_id == r->NatT_TranId))
    {
     UINT my_global_port;

     r->NatT_Register_Ok = 1;
     r->NatT_RegisterNextTick = r->Now + (UINT64)GenRandInterval(UDP_NAT_T_REGISTER_INTERVAL_MIN, UDP_NAT_T_REGISTER_INTERVAL_MAX);
     r->NatT_RegisterFailNum = 0;

     Debug("NAT-T Registered.\n");


     PackGetStr(p, "your_ip_and_port", r->NatT_Registered_IPAndPort, sizeof(r->NatT_Registered_IPAndPort));

     if (g_source_ip_validation_force_disable == 0)
     {

      r->NatT_EnableSourceIpValidation = PackGetBool(p, "enable_source_ip_validation");

     }
     else
     {

      r->NatT_EnableSourceIpValidation = 0;
     }


     my_global_port = PackGetInt(p, "your_port");

     if (my_global_port != 0)
     {
      if (r->NatTGlobalUdpPort != ((void*)0))
      {
       *r->NatTGlobalUdpPort = my_global_port;
      }
     }

     AddInterrupt(r->Interrupt, r->NatT_RegisterNextTick);
    }
   }
   else if (PackCmpStr(p, "opcode", "nat_t_connect_relay"))
   {

    if (is_ok && (PackGetInt64(p, "session_key") == r->NatT_SessionKey))
    {
     char client_ip_str[MAX_SIZE];
     UINT client_port;
     IP client_ip;

     PackGetStr(p, "client_ip", client_ip_str, sizeof(client_ip_str));
     client_port = PackGetInt(p, "client_port");
     StrToIP(&client_ip, client_ip_str);

     if (IsZeroIp(&client_ip) == 0 && client_port != 0)
     {
      UCHAR *rand_data;
      UINT rand_size;

      if (r->NatT_EnableSourceIpValidation)
      {
       RUDPAddIpToValidateList(r, &client_ip);
      }

      rand_size = Rand32() % 19;
      rand_data = Malloc(rand_size);

      Rand(rand_data, rand_size);

      RUDPSendPacket(r, &client_ip, client_port, rand_data, rand_size, 0);

      Free(rand_data);
     }
    }
   }
  }

  FreePack(p);
 }

 FreeBuf(b);
}
