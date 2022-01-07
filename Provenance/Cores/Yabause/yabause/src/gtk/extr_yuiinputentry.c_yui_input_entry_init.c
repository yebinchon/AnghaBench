
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiInputEntry ;


 int GTK_CONTAINER (int *) ;
 int GTK_TABLE (int *) ;
 int gtk_container_set_border_width (int ,int ) ;
 int gtk_table_set_col_spacings (int ,int) ;
 int gtk_table_set_row_spacings (int ,int) ;

__attribute__((used)) static void yui_input_entry_init(YuiInputEntry *yie) {
 gtk_container_set_border_width(GTK_CONTAINER(yie), 0);
 gtk_table_set_row_spacings(GTK_TABLE(yie), 10);
 gtk_table_set_col_spacings(GTK_TABLE(yie), 10);
}
