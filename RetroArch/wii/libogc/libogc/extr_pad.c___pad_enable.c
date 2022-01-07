
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAD_ENABLEDMASK (int ) ;
 int SI_EnablePolling (int ) ;
 int SI_GetResponse (int ,void*) ;
 int SI_SetCommand (int ,int) ;
 int __pad_analogmode ;
 int __pad_enabledbits ;

__attribute__((used)) static void __pad_enable(u32 chan)
{
 u32 buf[2];
 __pad_enabledbits |= PAD_ENABLEDMASK(chan);
 SI_GetResponse(chan,(void*)buf);
 SI_SetCommand(chan,(__pad_analogmode|0x00400000));
 SI_EnablePolling(__pad_enabledbits);
}
