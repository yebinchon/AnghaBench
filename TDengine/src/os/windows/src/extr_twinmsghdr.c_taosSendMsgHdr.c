
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwBufferCount; } ;
typedef TYPE_1__ WSAMSG ;
typedef int DWORD ;


 int WSASendMsg (int,TYPE_1__*,int ,int *,int ,int ) ;

void taosSendMsgHdr(void *hdr, int fd) {
    WSAMSG *msgHdr = (WSAMSG *)hdr;
    DWORD len;

    WSASendMsg(fd, msgHdr, 0, &len, 0, 0);
    msgHdr->dwBufferCount = 0;
}
