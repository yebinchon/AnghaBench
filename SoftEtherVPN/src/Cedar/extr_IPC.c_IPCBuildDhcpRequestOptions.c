
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int param_list ;
typedef int opcode ;
typedef int client_id ;
typedef scalar_t__ UCHAR ;
struct TYPE_6__ {scalar_t__ Opcode; scalar_t__ ServerAddress; scalar_t__ RequestedIp; scalar_t__* Hostname; scalar_t__* UserClass; } ;
struct TYPE_5__ {int MacAddress; } ;
typedef int LIST ;
typedef TYPE_1__ IPC ;
typedef TYPE_2__ DHCP_OPTION_LIST ;
typedef int BUF ;


 scalar_t__ ARP_HARDWARE_TYPE_ETHERNET ;
 int Add (int *,int ) ;
 int * BuildDhcpOptionsBuf (int *) ;
 int Copy (scalar_t__*,int ,int) ;
 scalar_t__ DHCP_DISCOVER ;
 int DHCP_ID_CLIENT_ID ;
 int DHCP_ID_HOST_NAME ;
 int DHCP_ID_MESSAGE_TYPE ;
 int DHCP_ID_REQUEST_IP_ADDRESS ;
 int DHCP_ID_REQ_PARAM_LIST ;
 int DHCP_ID_SERVER_ADDRESS ;
 int DHCP_ID_USER_CLASS ;
 int DHCP_ID_VENDOR_ID ;
 scalar_t__ DHCP_INFORM ;
 scalar_t__ DHCP_REQUEST ;
 int FreeDhcpOptions (int *) ;
 scalar_t__* IPC_DHCP_VENDOR_ID ;
 int IsEmptyStr (scalar_t__*) ;
 int NewDhcpOption (int ,scalar_t__*,int) ;
 int * NewListFast (int *) ;
 int StrLen (scalar_t__*) ;

BUF *IPCBuildDhcpRequestOptions(IPC *ipc, DHCP_OPTION_LIST *opt)
{
 LIST *o;
 UCHAR opcode;
 BUF *ret;

 if (ipc == ((void*)0) || opt == ((void*)0))
 {
  return ((void*)0);
 }

 o = NewListFast(((void*)0));


 opcode = opt->Opcode;
 Add(o, NewDhcpOption(DHCP_ID_MESSAGE_TYPE, &opcode, sizeof(opcode)));


 if (opt->ServerAddress != 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_SERVER_ADDRESS, &opt->ServerAddress, 4));
 }


 if (opt->RequestedIp != 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_REQUEST_IP_ADDRESS, &opt->RequestedIp, 4));
 }


 if (IsEmptyStr(opt->Hostname) == 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_HOST_NAME, opt->Hostname, StrLen(opt->Hostname)));
  Add(o, NewDhcpOption(DHCP_ID_CLIENT_ID, opt->Hostname, StrLen(opt->Hostname)));
 }
 else
 {
  UCHAR client_id[7];
  client_id[0] = ARP_HARDWARE_TYPE_ETHERNET;
  Copy(client_id + 1, ipc->MacAddress, 6);
  Add(o, NewDhcpOption(DHCP_ID_CLIENT_ID, client_id, sizeof(client_id)));
 }


 if (IsEmptyStr(opt->UserClass) == 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_USER_CLASS, opt->UserClass, StrLen(opt->UserClass)));
 }


 Add(o, NewDhcpOption(DHCP_ID_VENDOR_ID, IPC_DHCP_VENDOR_ID, StrLen(IPC_DHCP_VENDOR_ID)));


 if (opcode == DHCP_DISCOVER || opcode == DHCP_REQUEST || opcode == DHCP_INFORM)
 {
  UCHAR param_list[12];

  param_list[0] = 1;
  param_list[1] = 15;
  param_list[2] = 3;
  param_list[3] = 6;
  param_list[4] = 44;
  param_list[5] = 46;
  param_list[6] = 47;
  param_list[7] = 31;
  param_list[8] = 33;
  param_list[9] = 121;
  param_list[10] = 249;
  param_list[11] = 43;

  Add(o, NewDhcpOption(DHCP_ID_REQ_PARAM_LIST, param_list, sizeof(param_list)));
 }

 ret = BuildDhcpOptionsBuf(o);

 FreeDhcpOptions(o);

 return ret;
}
