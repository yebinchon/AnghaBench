
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
typedef int ULONG ;
struct TYPE_11__ {scalar_t__ OperStatus; struct TYPE_11__* Next; TYPE_3__* FirstUnicastAddress; int FriendlyName; } ;
struct TYPE_9__ {TYPE_1__* lpSockaddr; } ;
struct TYPE_10__ {struct TYPE_10__* Next; TYPE_2__ Address; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
typedef TYPE_3__* PIP_ADAPTER_UNICAST_ADDRESS ;
typedef TYPE_4__* PIP_ADAPTER_ADDRESSES ;
typedef char* LPVOID ;
typedef int LPTSTR ;
typedef int IP_ADAPTER_DNS_SERVER_ADDRESS ;
typedef TYPE_4__ IP_ADAPTER_ADDRESSES ;
typedef int DWORD ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessage (int,int *,int,int ,int ,int ,int *) ;
 int GAA_FLAG_SKIP_ANYCAST ;
 int GetAdaptersAddresses (scalar_t__,int ,int *,TYPE_4__*,int *) ;
 scalar_t__ IfOperStatusUp ;
 int LANG_NEUTRAL ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 int NO_ERROR ;
 int SUBLANG_DEFAULT ;
 int free (TYPE_4__*) ;
 int inet_ntop (scalar_t__,int *,char*,int) ;
 scalar_t__ malloc (int ) ;
 int printf (char*,...) ;
 int strcpy (char* const,int ) ;
 int taosWinSocketInit () ;
 scalar_t__ wcsstr (int ,char*) ;

int taosGetPrivateIp(char *const ip) {
    PIP_ADAPTER_ADDRESSES pAddresses = 0;
    IP_ADAPTER_DNS_SERVER_ADDRESS *pDnServer = 0;
    ULONG outBufLen = 0;
    DWORD dwRetVal = 0;
    char buff[100];
    DWORD bufflen = 100;
    int i;
    int flag = -1;

    taosWinSocketInit();
    GetAdaptersAddresses(AF_UNSPEC, 0, ((void*)0), pAddresses, &outBufLen);
    pAddresses = (IP_ADAPTER_ADDRESSES *)malloc(outBufLen);
    if ((dwRetVal = GetAdaptersAddresses(AF_INET, GAA_FLAG_SKIP_ANYCAST, ((void*)0), pAddresses, &outBufLen)) == NO_ERROR) {
        while (pAddresses) {
            if (wcsstr(pAddresses->FriendlyName, L"Loopback") != 0) {
                pAddresses = pAddresses->Next;
                continue;
            }
            if (pAddresses->OperStatus == IfOperStatusUp) {

            }
            else {

                pAddresses = pAddresses->Next;
                continue;
            }

            PIP_ADAPTER_UNICAST_ADDRESS pUnicast = pAddresses->FirstUnicastAddress;
            for (i = 0; pUnicast != ((void*)0); i++) {
                if (pUnicast->Address.lpSockaddr->sa_family == AF_INET) {
                    struct sockaddr_in *sa_in = (struct sockaddr_in *)pUnicast->Address.lpSockaddr;
                    strcpy(ip, inet_ntop(AF_INET, &(sa_in->sin_addr), buff, bufflen));
                    flag = 0;

                }
                else if (pUnicast->Address.lpSockaddr->sa_family == AF_INET6) {
                    struct sockaddr_in6 *sa_in6 = (struct sockaddr_in6 *)pUnicast->Address.lpSockaddr;
                    strcpy(ip, inet_ntop(AF_INET6, &(sa_in6->sin6_addr), buff, bufflen));
                    flag = 0;

                }
                else {
                }
                pUnicast = pUnicast->Next;
            }
            pAddresses = pAddresses->Next;
        }
    }
    else {
        LPVOID lpMsgBuf;
        printf("Call to GetAdaptersAddresses failed.\n");
        if (FormatMessage(
          FORMAT_MESSAGE_ALLOCATE_BUFFER |
          FORMAT_MESSAGE_FROM_SYSTEM |
          FORMAT_MESSAGE_IGNORE_INSERTS,
          ((void*)0),
          dwRetVal,
          MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
          (LPTSTR) & lpMsgBuf,
          0,
          ((void*)0))) {
            printf("\tError: %s", lpMsgBuf);
        }
        LocalFree(lpMsgBuf);
    }
    free(pAddresses);
    return flag;
}
