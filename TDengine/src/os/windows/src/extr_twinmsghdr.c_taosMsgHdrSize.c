
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwBufferCount; } ;
typedef TYPE_1__ WSAMSG ;



int taosMsgHdrSize(void *hdr) {
    WSAMSG *msgHdr = (WSAMSG *)hdr;
    return msgHdr->dwBufferCount;
}
