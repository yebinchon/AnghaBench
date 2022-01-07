
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int cell_num; TYPE_1__* table; int page_num; } ;
struct TYPE_4__ {int pager; } ;
typedef TYPE_2__ Cursor ;


 void* get_page (int ,int ) ;
 void* leaf_node_value (void*,int ) ;

void* cursor_value(Cursor* cursor) {
  uint32_t page_num = cursor->page_num;
  void* page = get_page(cursor->table->pager, page_num);
  return leaf_node_value(page, cursor->cell_num);
}
