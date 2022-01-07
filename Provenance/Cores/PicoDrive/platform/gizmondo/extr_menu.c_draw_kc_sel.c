
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrlopt_entries ;
 int ctrlopt_entry_count ;
 int me_draw (int ,int ,int,int,int *,int *) ;
 int menu_draw_begin (int) ;
 int menu_draw_end () ;
 int menu_draw_selection (int,int,int) ;

__attribute__((used)) static void draw_kc_sel(int menu_sel)
{
 int tl_x = 25+40, tl_y = 60, y;

 y = tl_y;
 menu_draw_begin(1);
 menu_draw_selection(tl_x - 16, tl_y + menu_sel*10, 138);

 me_draw(ctrlopt_entries, ctrlopt_entry_count, tl_x, tl_y, ((void*)0), ((void*)0));

 menu_draw_end();
}
