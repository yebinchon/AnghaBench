
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lpBuffers; } ;
typedef TYPE_1__ WSAMSG ;


 int free (int ) ;

void taosFreeMsgHdr(void *hdr) {
    WSAMSG *msgHdr = (WSAMSG *)hdr;
    free(msgHdr->lpBuffers);
}
