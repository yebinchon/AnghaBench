
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int name; } ;
typedef TYPE_1__ me_bind_action ;


 int action_binds (int,int ) ;
 int menu_draw_begin () ;
 int menu_draw_end () ;
 int menu_draw_selection (int,int,int) ;
 int text_out16 (int,int,char*,...) ;

__attribute__((used)) static void draw_key_config(const me_bind_action *opts, int opt_cnt, int player_idx, int sel)
{
 int x, y, tl_y = 16+20, i;

 menu_draw_begin();
 if (player_idx >= 0) {
  text_out16(80+80, 16, "Player %i controls", player_idx + 1);
  x = 80+80;
 } else {
  text_out16(80+80, 16, "Emulator controls");
  x = 80+40;
 }

 menu_draw_selection(x - 16, tl_y + sel*10, (player_idx >= 0) ? 66 : 130);

 y = tl_y;
 for (i = 0; i < opt_cnt; i++, y+=10)
  text_out16(x, y, "%s : %s", opts[i].name, action_binds(player_idx, opts[i].mask));

 text_out16(x, y, "Done");

 if (sel < opt_cnt) {
  text_out16(80+30, 220, "Press a button to bind/unbind");
  text_out16(80+30, 230, "Use SELECT to clear");
  text_out16(80+30, 240, "To bind UP/DOWN, hold SELECT");
  text_out16(80+30, 250, "Select \"Done\" to exit");
 } else {
  text_out16(80+30, 230, "Use Options -> Save cfg");
  text_out16(80+30, 240, "to save controls");
  text_out16(80+30, 250, "Press X or O to exit");
 }
 menu_draw_end();
}
