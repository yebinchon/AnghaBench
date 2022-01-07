
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct TYPE_4__ {int namelen; scalar_t__ dwBufferCount; struct TYPE_4__* lpBuffers; scalar_t__ name; } ;
typedef TYPE_1__ WSAMSG ;
typedef int WSABUF ;
typedef TYPE_1__* LPWSABUF ;
typedef scalar_t__ LPSOCKADDR ;


 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

void taosInitMsgHdr(void **hdr, void *dest, int maxPkts) {
    WSAMSG *msgHdr = (WSAMSG *)malloc(sizeof(WSAMSG));
    memset(msgHdr, 0, sizeof(WSAMSG));
    *hdr = msgHdr;



    msgHdr->name = (LPSOCKADDR)dest;
    msgHdr->namelen = sizeof(struct sockaddr_in);
    int size = sizeof(WSABUF) * maxPkts;
    msgHdr->lpBuffers = (LPWSABUF)malloc(size);
    memset(msgHdr->lpBuffers, 0, size);
    msgHdr->dwBufferCount = 0;
}
