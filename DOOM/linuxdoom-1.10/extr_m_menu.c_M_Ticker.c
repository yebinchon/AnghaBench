
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ skullAnimCounter ;
 int whichSkull ;

void M_Ticker (void)
{
    if (--skullAnimCounter <= 0)
    {
 whichSkull ^= 1;
 skullAnimCounter = 8;
    }
}
