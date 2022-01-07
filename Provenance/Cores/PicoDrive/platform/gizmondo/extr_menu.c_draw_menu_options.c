
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPT_ENTRY_COUNT ;
 int me_draw (int ,int ,int,int,int ,int *) ;
 int menu_draw_begin (int) ;
 int menu_draw_end () ;
 int menu_draw_selection (int,int,int) ;
 int menu_opt_cust_draw ;
 int opt_entries ;

__attribute__((used)) static void draw_menu_options(int menu_sel)
{
 int tl_x = 25, tl_y = 24;

 menu_draw_begin(1);

 menu_draw_selection(tl_x - 16, tl_y + menu_sel*10, 284);

 me_draw(opt_entries, OPT_ENTRY_COUNT, tl_x, tl_y, menu_opt_cust_draw, ((void*)0));

 menu_draw_end();
}
