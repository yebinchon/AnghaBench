
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int update_text_fn ;
typedef int WINDOW ;


 int print_page (int *,int,int,int ,void*) ;
 int print_position (int *) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

__attribute__((used)) static void refresh_text_box(WINDOW *dialog, WINDOW *box, int boxh, int boxw,
        int cur_y, int cur_x, update_text_fn update_text,
        void *data)
{
 print_page(box, boxh, boxw, update_text, data);
 print_position(dialog);
 wmove(dialog, cur_y, cur_x);
 wrefresh(dialog);
}
