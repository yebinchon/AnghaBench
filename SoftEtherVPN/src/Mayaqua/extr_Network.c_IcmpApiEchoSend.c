
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct in_addr {int dummy; } ;
typedef int opt ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_15__ {scalar_t__ (* IcmpCreateFile ) () ;int (* IcmpSendEcho ) (scalar_t__,int ,int*,scalar_t__,TYPE_2__*,TYPE_4__*,scalar_t__,scalar_t__) ;int (* IcmpCloseHandle ) (scalar_t__) ;} ;
struct TYPE_11__ {int Ttl; } ;
struct TYPE_14__ {int Status; int DataSize; int * Data; int Address; int RoundTripTime; TYPE_1__ Options; } ;
struct TYPE_13__ {int Ok; int Timeout; int DataSize; int Data; int IpAddress; int Rtt; int Ttl; int Code; void* Type; } ;
struct TYPE_12__ {int Ttl; } ;
typedef TYPE_2__ IP_OPTION_INFORMATION ;
typedef int IPAddr ;
typedef int IP ;
typedef TYPE_3__ ICMP_RESULT ;
typedef TYPE_4__ ICMP_ECHO_REPLY ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int Clone (int *,int) ;
 int Free (TYPE_4__*) ;
 int ICMP_CODE_FRAGMENT_REASSEMBLY_TIME_EXCEEDED ;
 int ICMP_CODE_HOST_UNREACHABLE ;
 int ICMP_CODE_NET_UNREACHABLE ;
 int ICMP_CODE_PORT_UNREACHABLE ;
 int ICMP_CODE_PROTOCOL_UNREACHABLE ;
 int ICMP_CODE_TTL_EXCEEDED_IN_TRANSIT ;
 void* ICMP_TYPE_DESTINATION_UNREACHABLE ;
 void* ICMP_TYPE_TIME_EXCEEDED ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IPToInAddr (struct in_addr*,int *) ;




 int IP_SUCCESS ;


 int InAddrToIP (int *,struct in_addr*) ;
 int IsIP4 (int *) ;
 scalar_t__ IsIcmpApiSupported () ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;
 scalar_t__ stub1 () ;
 int stub2 (scalar_t__,int ,int*,scalar_t__,TYPE_2__*,TYPE_4__*,scalar_t__,scalar_t__) ;
 int stub3 (scalar_t__) ;
 TYPE_5__* w32net ;

ICMP_RESULT *IcmpApiEchoSend(IP *dest_ip, UCHAR ttl, UCHAR *data, UINT size, UINT timeout)
{
 return ((void*)0);

}
