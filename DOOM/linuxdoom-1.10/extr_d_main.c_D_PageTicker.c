
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_AdvanceDemo () ;
 scalar_t__ pagetic ;

void D_PageTicker (void)
{
    if (--pagetic < 0)
 D_AdvanceDemo ();
}
