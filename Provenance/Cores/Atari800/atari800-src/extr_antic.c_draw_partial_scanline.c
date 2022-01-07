
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int ULONG ;


 int ANTIC_DMACTL ;
 scalar_t__ ANTIC_margin ;
 scalar_t__ FALSE ;
 int * GTIA_pm_scanline ;
 int LCHOP ;
 size_t NORMAL1 ;
 size_t NORMAL2 ;
 int RCHOP ;
 size_t SCROLL1 ;
 size_t SCROLL2 ;
 int antic_load () ;
 scalar_t__ antic_memory ;
 int anticmode ;
 scalar_t__* ch_offset ;
 int* chars_displayed ;
 int draw_antic_0_ptr () ;
 int draw_antic_ptr (int,scalar_t__,int *,int *) ;
 int left_border_chars ;
 int left_border_start ;
 size_t md ;
 int memcpy (int *,int *,int) ;
 scalar_t__ need_load ;
 int right_border_end ;
 int right_border_start ;
 int scanlines_to_curses_display ;
 int * scrn_ptr ;
 int* x_min ;

void draw_partial_scanline(int l, int r)
{


 int lborder_chars = left_border_chars;



 int rborder_start = right_border_start;


 int lborder_start = LCHOP * 4;

 int lborder_end = LCHOP * 4 + left_border_chars * 4;

 int rborder_end = (48 - RCHOP) * 4;


 int dont_display_playfield = 0;


 int l_pfchar = 0;

 int r_pfchar = 0;




 UWORD sv_buf[4];




 UWORD sv_buf2[4 * 4];

 int sv_bufstart = 0;
 int sv_bufsize = 0;
 int sv_bufstart2 = 0;
 int sv_bufsize2 = 0;

 int nchars = 0;



 int ch_adj = 0;

 int x_min_adj = 0;




 int l_pfactual = 0;




 int r_pfactual = 0;
 r_pfchar = chars_displayed[md];
 if (md == NORMAL1 || md == SCROLL1) {
  r_pfchar *= 2;
 }
 else if (md == NORMAL2 || md == SCROLL2) {
  r_pfchar *= 4;
 }
 if (anticmode < 2 || (ANTIC_DMACTL & 3) == 0) {
  lborder_end = rborder_end;
  dont_display_playfield = 1;
 }
 if (l > rborder_end)
  l = rborder_end;
 if (r > rborder_end)
  r = rborder_end;
 if (l < lborder_start)
  l = lborder_start;
 if (r < lborder_start)
  r = lborder_start;
 if (l >= r)
  return;
 if (l < lborder_end) {

  sv_bufstart = (l & (~3));
  sv_bufsize = l - sv_bufstart;
  left_border_start = sv_bufstart;
  left_border_chars = lborder_chars - (sv_bufstart - lborder_start) / 4;
  if (l > x_min[md]) {
   l_pfchar = (l - x_min[md]) / 4;
   if (((l - x_min[md]) & 3) > sv_bufsize) {
    sv_bufsize = ((l - x_min[md]) & 3);
    sv_bufstart = l - sv_bufsize;
   }
  }
 }
 else if (l >= rborder_start) {
  sv_bufstart = (l & (~3));
  sv_bufsize = l - sv_bufstart;
  right_border_start = sv_bufstart;
  dont_display_playfield = 1;
 }
 else {
  sv_bufsize = ((l - x_min[md]) & 3);
  sv_bufstart = l - sv_bufsize;
  l_pfchar = (sv_bufstart - x_min[md]) / 4;
  left_border_chars = 0;
 }
 memcpy(sv_buf, scrn_ptr + sv_bufstart, sv_bufsize * sizeof(UWORD));

 if (r <= lborder_end) {

  left_border_chars = (r + 3) / 4 - sv_bufstart / 4;

  dont_display_playfield = 1;
 }
 else {

  if (need_load) {
   antic_load();
   need_load = FALSE;
  }

  if (r > rborder_start) {
   right_border_end = ((r + 3) & (~3));
  }
  else {
   r_pfchar = (r - x_min[md] + 3) / 4;
  }
 }
 if (dont_display_playfield) {
  nchars = 0;
  x_min_adj = 0;
  ch_adj = 0;
 }
 else if (md == NORMAL1 || md == SCROLL1) {
  l_pfactual = (l_pfchar & (~1));
  sv_bufsize2 = (l_pfchar - l_pfactual) * 4;
  sv_bufstart2 = x_min[md] + l_pfactual * 4;
  r_pfactual = ((r_pfchar + 1) & (~1));
  nchars = (r_pfactual - l_pfactual) / 2;
  x_min_adj = l_pfactual * 4;
  ch_adj = l_pfactual / 2;
 }
 else if (md == NORMAL2 || md == SCROLL2) {
  l_pfactual = (l_pfchar & (~3));
  sv_bufsize2 = (l_pfchar - l_pfactual) * 4;
  sv_bufstart2 = x_min[md] + l_pfactual * 4;
  r_pfactual = ((r_pfchar + 3) & (~3));
  nchars = (r_pfactual - l_pfactual) / 4;
  x_min_adj = l_pfactual * 4;
  ch_adj = l_pfactual / 4;
 }
 else {
  nchars = r_pfchar - l_pfchar;
  x_min_adj = l_pfchar * 4;
  ch_adj = l_pfchar;
 }
 memcpy(sv_buf2, scrn_ptr + sv_bufstart2, sv_bufsize2 * sizeof(UWORD));

 if (dont_display_playfield) {



  if (anticmode < 2 || (ANTIC_DMACTL & 3) == 0 || r <= lborder_end) {
   right_border_end = left_border_start + left_border_chars * 4;
  }
  else if (l >= rborder_start) {
   left_border_start = right_border_start;
  }
  draw_antic_0_ptr();
 }
 else {
  draw_antic_ptr(nchars,
   antic_memory + ANTIC_margin + ch_offset[md] + ch_adj,
   scrn_ptr + x_min[md] + x_min_adj,
   (ULONG *) &GTIA_pm_scanline[x_min[md] + x_min_adj]);
 }
 memcpy(scrn_ptr + sv_bufstart2, sv_buf2, sv_bufsize2 * sizeof(UWORD));
 memcpy(scrn_ptr + sv_bufstart, sv_buf, sv_bufsize * sizeof(UWORD));


 left_border_chars=lborder_chars;
 right_border_start=rborder_start;
 left_border_start = LCHOP * 4;
 right_border_end = (48-RCHOP) *4;
}
