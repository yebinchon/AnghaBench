
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DrawSprite (scalar_t__,int) ;
 scalar_t__ HighPreSpr ;
 int PDRAW_DIRTY_SPRITES ;
 int PDRAW_SPRITES_MOVED ;
 int PrepareSprites (int) ;
 int rendstatus ;

__attribute__((used)) static void DrawAllSprites(unsigned char *sprited, int prio, int sh)
{
  int rs = rendstatus;
  unsigned char *p;
  int cnt;

  if (rs & (PDRAW_SPRITES_MOVED|PDRAW_DIRTY_SPRITES)) {

    PrepareSprites(rs & PDRAW_DIRTY_SPRITES);
    rendstatus = rs & ~(PDRAW_SPRITES_MOVED|PDRAW_DIRTY_SPRITES);
  }

  cnt = sprited[0] & 0x7f;
  if (cnt == 0) return;

  p = &sprited[3];


  for (cnt--; cnt >= 0; cnt--)
  {
    int offs;
    if ((p[cnt] >> 7) != prio) continue;
    offs = (p[cnt]&0x7f) * 2;
    DrawSprite(HighPreSpr + offs, sh);
  }
}
