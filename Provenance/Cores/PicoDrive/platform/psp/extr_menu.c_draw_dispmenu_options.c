
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPT3_ENTRY_COUNT ;
 int me_draw (int ,int ,int,int,int ,int *) ;
 int menu_draw_begin () ;
 int menu_draw_end () ;
 int menu_draw_selection (int,int,int) ;
 int menu_opt3_cust_draw ;
 int opt3_entries ;

__attribute__((used)) static void draw_dispmenu_options(int menu_sel)
{
 int tl_x = 80, tl_y = 16+50;

 menu_draw_begin();

 menu_draw_selection(tl_x - 16, tl_y + menu_sel*10, 316);

 me_draw(opt3_entries, OPT3_ENTRY_COUNT, tl_x, tl_y, menu_opt3_cust_draw, ((void*)0));

 menu_draw_end();
}
