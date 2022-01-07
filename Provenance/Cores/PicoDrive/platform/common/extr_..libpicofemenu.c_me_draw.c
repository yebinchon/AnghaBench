
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; char* (* generate_name ) (int ,int*) ;int beh; char* help; scalar_t__ var; scalar_t__ data; int id; int enabled; } ;
typedef TYPE_1__ menu_entry ;
 int g_menuscreen_h ;
 int g_menuscreen_w ;
 int lprintf (char*,...) ;
 int me_mfont_h ;
 int me_mfont_w ;
 int me_read_onoff (TYPE_1__ const*) ;
 int me_sfont_h ;
 int menu_draw_begin (int,int ) ;
 int menu_draw_end () ;
 int menu_draw_selection (int,int,int) ;
 scalar_t__* menu_error_msg ;
 int menu_error_time ;
 int menu_separation () ;
 int plat_get_ticks_ms () ;
 int smalltext_out16 (int,int,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 char* stub1 (int ,int*) ;
 char* stub2 (int ,int*) ;
 char* stub3 (int ,int*) ;
 char* stub4 (int ,int*) ;
 int text_out16 (int,int,...) ;

__attribute__((used)) static void me_draw(const menu_entry *entries, int sel, void (*draw_more)(void))
{
 const menu_entry *ent, *ent_sel = entries;
 int x, y, w = 0, h = 0;
 int offs, col2_offs = 27 * me_mfont_w;
 int vi_sel_ln = 0;
 const char *name;
 int i, n;


 for (ent = entries, i = n = 0; ent->name; ent++, i++)
 {
  int wt;

  if (!ent->enabled)
   continue;

  if (i == sel) {
   ent_sel = ent;
   vi_sel_ln = n;
  }

  name = ((void*)0);
  wt = strlen(ent->name) * me_mfont_w;
  if (wt == 0 && ent->generate_name)
   name = ent->generate_name(ent->id, &offs);
  if (name != ((void*)0))
   wt = strlen(name) * me_mfont_w;

  if (ent->beh != 134)
  {
   if (wt > col2_offs)
    col2_offs = wt + me_mfont_w;
   wt = col2_offs;

   switch (ent->beh) {
   case 134:
    break;
   case 129:
   case 128:
    wt += me_mfont_w * 3;
    break;
   case 133:
   case 132:
   case 131:
    name = ((void*)0);
    offs = 0;
    if (ent->generate_name != ((void*)0))
     name = ent->generate_name(ent->id, &offs);
    if (name != ((void*)0))
     wt += (strlen(name) + offs) * me_mfont_w;
    break;
   case 130:
    wt += 10 * me_mfont_w;
    break;
   }
  }

  if (wt > w)
   w = wt;
  n++;
 }
 h = n * me_mfont_h;
 w += me_mfont_w * 2;

 if (w > g_menuscreen_w) {
  lprintf("width %d > %d\n", w, g_menuscreen_w);
  w = g_menuscreen_w;
 }
 if (h > g_menuscreen_h) {
  lprintf("height %d > %d\n", w, g_menuscreen_h);
  h = g_menuscreen_h;
 }

 x = g_menuscreen_w / 2 - w / 2;
 y = g_menuscreen_h / 2 - h / 2;





 menu_draw_begin(1, 0);
 menu_draw_selection(x, y + vi_sel_ln * me_mfont_h, w);
 x += me_mfont_w * 2;

 for (ent = entries; ent->name; ent++)
 {
  const char **names;
  int len, leftname_end = 0;

  if (!ent->enabled)
   continue;

  name = ent->name;
  if (strlen(name) == 0) {
   if (ent->generate_name)
    name = ent->generate_name(ent->id, &offs);
  }
  if (name != ((void*)0)) {
   text_out16(x, y, name);
   leftname_end = x + (strlen(name) + 1) * me_mfont_w;
  }

  switch (ent->beh) {
  case 134:
   break;
  case 129:
   text_out16(x + col2_offs, y, me_read_onoff(ent) ? "ON" : "OFF");
   break;
  case 128:
   text_out16(x + col2_offs, y, "%i", *(int *)ent->var);
   break;
  case 133:
  case 132:
  case 131:
   name = ((void*)0);
   offs = 0;
   if (ent->generate_name)
    name = ent->generate_name(ent->id, &offs);
   if (name != ((void*)0))
    text_out16(x + col2_offs + offs * me_mfont_w, y, "%s", name);
   break;
  case 130:
   names = (const char **)ent->data;
   for (i = 0; names[i] != ((void*)0); i++) {
    offs = x + col2_offs;
    len = strlen(names[i]);
    if (len > 10)
     offs += (10 - len - 2) * me_mfont_w;
    if (offs < leftname_end)
     offs = leftname_end;
    if (i == *(unsigned char *)ent->var) {
     text_out16(offs, y, "%s", names[i]);
     break;
    }
   }
   break;
  }

  y += me_mfont_h;
 }

 menu_separation();


 h = (g_menuscreen_h - h) / 2;
 if (menu_error_msg[0] != 0) {
  if (h >= me_mfont_h + 4)
   text_out16(5, g_menuscreen_h - me_mfont_h - 4, menu_error_msg);
  else
   lprintf("menu msg doesn't fit!\n");

  if (plat_get_ticks_ms() - menu_error_time > 2048)
   menu_error_msg[0] = 0;
 }
 else if (ent_sel->help != ((void*)0)) {
  const char *tmp = ent_sel->help;
  int l;
  for (l = 0; tmp != ((void*)0) && *tmp != 0; l++)
   tmp = strchr(tmp + 1, '\n');
  if (h >= l * me_sfont_h + 4)
   for (tmp = ent_sel->help; l > 0; l--, tmp = strchr(tmp, '\n') + 1)
    smalltext_out16(5, g_menuscreen_h - (l * me_sfont_h + 4), tmp, 0xffff);
 }

 menu_separation();

 if (draw_more != ((void*)0))
  draw_more();

 menu_draw_end();
}
