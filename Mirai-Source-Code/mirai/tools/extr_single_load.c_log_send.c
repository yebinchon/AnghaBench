
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int bytes_sent ;
 scalar_t__ debug_mode ;
 int hexDump (char*,void*,int) ;
 int send (int,void*,int,int) ;
 int sprintf (char*,char*,int,int) ;
 TYPE_1__* stateTable ;

int log_send(int sock, void *buf, int len, int flags)
{
    if (debug_mode)
    {
        char hex_buf[32] = {0};
        sprintf(hex_buf, "state %d - send: %d", stateTable[sock].state, len);
        hexDump(hex_buf, buf, len);
    }
    bytes_sent+=len;
    return send(sock, buf, len, flags);
}
