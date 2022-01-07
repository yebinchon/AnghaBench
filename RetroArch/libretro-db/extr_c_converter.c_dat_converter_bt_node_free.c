
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ dat_converter_bt_node_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void dat_converter_bt_node_free(dat_converter_bt_node_t* node)
{
   if (!node)
      return;

   dat_converter_bt_node_free(node->left);
   dat_converter_bt_node_free(node->right);
   free(node);
}
