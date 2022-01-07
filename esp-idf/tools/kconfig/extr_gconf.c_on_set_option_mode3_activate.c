
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkMenuItem ;


 int OPT_PROMPT ;
 int display_tree (int *) ;
 int gtk_tree_store_clear (int ) ;
 int opt_mode ;
 int rootmenu ;
 int tree2 ;

void
on_set_option_mode3_activate(GtkMenuItem *menuitem, gpointer user_data)
{
 opt_mode = OPT_PROMPT;
 gtk_tree_store_clear(tree2);
 display_tree(&rootmenu);
}
