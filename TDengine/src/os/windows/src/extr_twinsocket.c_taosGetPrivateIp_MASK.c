#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_11__ {scalar_t__ OperStatus; struct TYPE_11__* Next; TYPE_3__* FirstUnicastAddress; int /*<<< orphan*/  FriendlyName; } ;
struct TYPE_9__ {TYPE_1__* lpSockaddr; } ;
struct TYPE_10__ {struct TYPE_10__* Next; TYPE_2__ Address; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
typedef  TYPE_3__* PIP_ADAPTER_UNICAST_ADDRESS ;
typedef  TYPE_4__* PIP_ADAPTER_ADDRESSES ;
typedef  char* LPVOID ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  IP_ADAPTER_DNS_SERVER_ADDRESS ;
typedef  TYPE_4__ IP_ADAPTER_ADDRESSES ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GAA_FLAG_SKIP_ANYCAST ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ IfOperStatusUp ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 

int FUNC11(char *const ip) {
    PIP_ADAPTER_ADDRESSES pAddresses = 0;
    IP_ADAPTER_DNS_SERVER_ADDRESS *pDnServer = 0;
    ULONG outBufLen = 0;
    DWORD dwRetVal = 0;
    char buff[100];
    DWORD bufflen = 100;
    int i;
    int flag = -1;

    FUNC9();
    FUNC1(AF_UNSPEC, 0, NULL, pAddresses, &outBufLen);
    pAddresses = (IP_ADAPTER_ADDRESSES *)FUNC6(outBufLen);
    if ((dwRetVal = FUNC1(AF_INET, GAA_FLAG_SKIP_ANYCAST, NULL, pAddresses, &outBufLen)) == NO_ERROR) {
        while (pAddresses) {
            if (FUNC10(pAddresses->FriendlyName, L"Loopback") != 0) {
                pAddresses = pAddresses->Next;
                continue;
            }
            if (pAddresses->OperStatus == IfOperStatusUp) {
                //printf("%s, Status: active\n", pAddresses->FriendlyName);
            }
            else {
                //printf("%s, Status: deactive\n", pAddresses->FriendlyName);
                pAddresses = pAddresses->Next;
                continue;
            }

            PIP_ADAPTER_UNICAST_ADDRESS pUnicast = pAddresses->FirstUnicastAddress;
            for (i = 0; pUnicast != NULL; i++) {
                if (pUnicast->Address.lpSockaddr->sa_family == AF_INET) {
                    struct sockaddr_in *sa_in = (struct sockaddr_in *)pUnicast->Address.lpSockaddr;
                    FUNC8(ip, FUNC5(AF_INET, &(sa_in->sin_addr), buff, bufflen));
                    flag = 0;
                    //printf("%s\n", ip);
                }
                else if (pUnicast->Address.lpSockaddr->sa_family == AF_INET6) {
                    struct sockaddr_in6 *sa_in6 = (struct sockaddr_in6 *)pUnicast->Address.lpSockaddr;
                    FUNC8(ip, FUNC5(AF_INET6, &(sa_in6->sin6_addr), buff, bufflen));
                    flag = 0;
                    //printf("%s\n", ip);
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
        FUNC7("Call to GetAdaptersAddresses failed.\n");
        if (FUNC0(
          FORMAT_MESSAGE_ALLOCATE_BUFFER |
          FORMAT_MESSAGE_FROM_SYSTEM |
          FORMAT_MESSAGE_IGNORE_INSERTS,
          NULL,
          dwRetVal,
          FUNC3(LANG_NEUTRAL, SUBLANG_DEFAULT),
          (LPTSTR) & lpMsgBuf,
          0,
          NULL)) {
            FUNC7("\tError: %s", lpMsgBuf);
        }
        FUNC2(lpMsgBuf);
    }
    FUNC4(pAddresses);
    return flag;
}