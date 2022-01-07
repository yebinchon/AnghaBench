
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_GREEN ;
 int COLOR_MAGENTA ;
 int COLOR_RED ;
 int COLOR_YELLOW ;
 int DIALOG_BOX ;
 int DIALOG_MENU_BACK ;
 int DIALOG_MENU_FORE ;
 int DIALOG_TEXT ;
 int FUNCTION_HIGHLIGHT ;
 int FUNCTION_TEXT ;
 int INPUT_BOX ;
 int INPUT_FIELD ;
 int INPUT_HEADING ;
 int INPUT_TEXT ;
 int MAIN_HEADING ;
 int MAIN_MENU_BACK ;
 int MAIN_MENU_BOX ;
 int MAIN_MENU_FORE ;
 int MAIN_MENU_GREY ;
 int MAIN_MENU_HEADING ;
 int NORMAL ;
 int SCROLLWIN_BOX ;
 int SCROLLWIN_HEADING ;
 int SCROLLWIN_TEXT ;
 int init_pair (int ,int,int) ;

__attribute__((used)) static void set_normal_colors(void)
{
 init_pair(NORMAL, -1, -1);
 init_pair(MAIN_HEADING, COLOR_MAGENTA, -1);


 init_pair(MAIN_MENU_FORE, -1, -1);

 init_pair(MAIN_MENU_BACK, -1, -1);
 init_pair(MAIN_MENU_GREY, -1, -1);
 init_pair(MAIN_MENU_HEADING, COLOR_GREEN, -1);
 init_pair(MAIN_MENU_BOX, COLOR_YELLOW, -1);

 init_pair(SCROLLWIN_TEXT, -1, -1);
 init_pair(SCROLLWIN_HEADING, COLOR_GREEN, -1);
 init_pair(SCROLLWIN_BOX, COLOR_YELLOW, -1);

 init_pair(DIALOG_TEXT, -1, -1);
 init_pair(DIALOG_BOX, COLOR_YELLOW, -1);
 init_pair(DIALOG_MENU_BACK, COLOR_YELLOW, -1);
 init_pair(DIALOG_MENU_FORE, COLOR_RED, -1);

 init_pair(INPUT_BOX, COLOR_YELLOW, -1);
 init_pair(INPUT_HEADING, COLOR_GREEN, -1);
 init_pair(INPUT_TEXT, -1, -1);
 init_pair(INPUT_FIELD, -1, -1);

 init_pair(FUNCTION_HIGHLIGHT, -1, -1);
 init_pair(FUNCTION_TEXT, COLOR_YELLOW, -1);
}
