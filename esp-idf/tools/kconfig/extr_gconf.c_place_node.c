
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
typedef int GtkTreeIter ;


 int gtk_tree_store_append (int ,int *,int *) ;
 int indent ;
 int ** parents ;
 int set_node (int *,struct menu*,char**) ;
 int tree ;

__attribute__((used)) static void place_node(struct menu *menu, char **row)
{
 GtkTreeIter *parent = parents[indent - 1];
 GtkTreeIter *node = parents[indent];

 gtk_tree_store_append(tree, node, parent);
 set_node(node, menu, row);
}
