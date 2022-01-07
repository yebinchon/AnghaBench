
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t dwBufferCount; TYPE_1__* lpBuffers; } ;
typedef TYPE_2__ WSAMSG ;
struct TYPE_3__ {char* buf; int len; } ;



void taosSetMsgHdrData(void *hdr, char *data, int dataLen) {
    WSAMSG *msgHdr = (WSAMSG *)hdr;
    msgHdr->lpBuffers[msgHdr->dwBufferCount].buf = data;
    msgHdr->lpBuffers[msgHdr->dwBufferCount].len = dataLen;
    msgHdr->dwBufferCount++;
}
