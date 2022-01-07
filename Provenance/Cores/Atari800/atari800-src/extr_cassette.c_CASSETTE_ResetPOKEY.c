
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int pending_serin ;
 int pending_serin_byte ;

void CASSETTE_ResetPOKEY(void)
{

 pending_serin = FALSE;
 pending_serin_byte = 0xff;
}
