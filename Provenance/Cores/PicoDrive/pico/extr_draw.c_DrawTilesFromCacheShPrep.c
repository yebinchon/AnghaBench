
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HighCol ;
 int PDRAW_SHHI_DONE ;
 int rendstatus ;

__attribute__((used)) static void DrawTilesFromCacheShPrep(void)
{



  int c = 320/4, *zb = (int *)(HighCol+8);
  rendstatus |= PDRAW_SHHI_DONE;
  while (c--)
  {
    *zb++ &= 0xbfbfbfbf;
  }
}
