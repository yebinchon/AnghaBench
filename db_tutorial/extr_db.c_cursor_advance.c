
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ page_num; scalar_t__ cell_num; int end_of_table; TYPE_1__* table; } ;
struct TYPE_4__ {int pager; } ;
typedef TYPE_2__ Cursor ;


 void* get_page (int ,scalar_t__) ;
 scalar_t__* leaf_node_next_leaf (void*) ;
 scalar_t__* leaf_node_num_cells (void*) ;

void cursor_advance(Cursor* cursor) {
  uint32_t page_num = cursor->page_num;
  void* node = get_page(cursor->table->pager, page_num);

  cursor->cell_num += 1;
  if (cursor->cell_num >= (*leaf_node_num_cells(node))) {

    uint32_t next_page_num = *leaf_node_next_leaf(node);
    if (next_page_num == 0) {

      cursor->end_of_table = 1;
    } else {
      cursor->page_num = next_page_num;
      cursor->cell_num = 0;
    }
  }
}
