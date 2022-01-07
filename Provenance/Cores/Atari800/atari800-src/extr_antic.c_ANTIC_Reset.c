
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_NMIEN ;
 int ANTIC_NMIST ;
 int ANTIC_OFFSET_DMACTL ;
 int ANTIC_PutByte (int ,int ) ;

void ANTIC_Reset(void)
{
 ANTIC_NMIEN = 0x00;
 ANTIC_NMIST = 0x1f;
 ANTIC_PutByte(ANTIC_OFFSET_DMACTL, 0);
}
