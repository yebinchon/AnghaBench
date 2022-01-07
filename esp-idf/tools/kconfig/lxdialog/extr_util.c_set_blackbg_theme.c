
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_BLACK ;
 int COLOR_RED ;
 int COLOR_WHITE ;
 int COLOR_YELLOW ;
 int DLG_COLOR (int ,int ,int ,int) ;
 int border ;
 int button_active ;
 int button_inactive ;
 int button_key_active ;
 int button_key_inactive ;
 int button_label_active ;
 int button_label_inactive ;
 int check ;
 int check_selected ;
 int darrow ;
 int dialog ;
 int inputbox ;
 int inputbox_border ;
 int item ;
 int item_selected ;
 int menubox ;
 int menubox_border ;
 int position_indicator ;
 int screen ;
 int searchbox ;
 int searchbox_border ;
 int searchbox_title ;
 int shadow ;
 int tag ;
 int tag_key ;
 int tag_key_selected ;
 int tag_selected ;
 int title ;
 int uarrow ;

__attribute__((used)) static void set_blackbg_theme(void)
{
 DLG_COLOR(screen, COLOR_RED, COLOR_BLACK, 1);
 DLG_COLOR(shadow, COLOR_BLACK, COLOR_BLACK, 0);
 DLG_COLOR(dialog, COLOR_WHITE, COLOR_BLACK, 0);
 DLG_COLOR(title, COLOR_RED, COLOR_BLACK, 0);
 DLG_COLOR(border, COLOR_BLACK, COLOR_BLACK, 1);

 DLG_COLOR(button_active, COLOR_YELLOW, COLOR_RED, 0);
 DLG_COLOR(button_inactive, COLOR_YELLOW, COLOR_BLACK, 0);
 DLG_COLOR(button_key_active, COLOR_YELLOW, COLOR_RED, 1);
 DLG_COLOR(button_key_inactive, COLOR_RED, COLOR_BLACK, 0);
 DLG_COLOR(button_label_active, COLOR_WHITE, COLOR_RED, 0);
 DLG_COLOR(button_label_inactive, COLOR_BLACK, COLOR_BLACK, 1);

 DLG_COLOR(inputbox, COLOR_YELLOW, COLOR_BLACK, 0);
 DLG_COLOR(inputbox_border, COLOR_YELLOW, COLOR_BLACK, 0);

 DLG_COLOR(searchbox, COLOR_YELLOW, COLOR_BLACK, 0);
 DLG_COLOR(searchbox_title, COLOR_YELLOW, COLOR_BLACK, 1);
 DLG_COLOR(searchbox_border, COLOR_BLACK, COLOR_BLACK, 1);

 DLG_COLOR(position_indicator, COLOR_RED, COLOR_BLACK, 0);

 DLG_COLOR(menubox, COLOR_YELLOW, COLOR_BLACK, 0);
 DLG_COLOR(menubox_border, COLOR_BLACK, COLOR_BLACK, 1);

 DLG_COLOR(item, COLOR_WHITE, COLOR_BLACK, 0);
 DLG_COLOR(item_selected, COLOR_WHITE, COLOR_RED, 0);

 DLG_COLOR(tag, COLOR_RED, COLOR_BLACK, 0);
 DLG_COLOR(tag_selected, COLOR_YELLOW, COLOR_RED, 1);
 DLG_COLOR(tag_key, COLOR_RED, COLOR_BLACK, 0);
 DLG_COLOR(tag_key_selected, COLOR_YELLOW, COLOR_RED, 1);

 DLG_COLOR(check, COLOR_YELLOW, COLOR_BLACK, 0);
 DLG_COLOR(check_selected, COLOR_YELLOW, COLOR_RED, 1);

 DLG_COLOR(uarrow, COLOR_RED, COLOR_BLACK, 0);
 DLG_COLOR(darrow, COLOR_RED, COLOR_BLACK, 0);
}
