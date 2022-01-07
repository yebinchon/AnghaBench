
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* POKEY_AUDCTL ;
 int POKEY_POLY17_SIZE ;
 int POKEY_POLY9 ;
 int POKEY_POLY9_SIZE ;
 int random_scanline_counter ;

void POKEY_Frame(void)
{
 random_scanline_counter %= (POKEY_AUDCTL[0] & POKEY_POLY9) ? POKEY_POLY9_SIZE : POKEY_POLY17_SIZE;
}
