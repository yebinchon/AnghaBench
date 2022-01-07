
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_sc_ack_send ;

void sc_send_ack_stop(void)
{
    s_sc_ack_send = 0;
}
