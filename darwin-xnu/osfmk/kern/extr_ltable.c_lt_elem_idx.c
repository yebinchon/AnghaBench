
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {size_t idx; } ;
struct lt_elem {TYPE_1__ lt_id; } ;
struct link_table {size_t elem_sz; size_t slab_shift; size_t slab_elem; int slab_msk; struct lt_elem** table; } ;


 int assert (int) ;
 struct lt_elem* lt_elem_ofst_slab (struct lt_elem*,int ,size_t) ;
 int panic (char*,size_t,size_t,struct link_table*) ;

__attribute__((used)) static inline struct lt_elem *
lt_elem_idx(struct link_table *table, uint32_t idx)
{
 uint32_t ofst = idx * table->elem_sz;
 struct lt_elem *slab = table->table[ofst >> table->slab_shift];
 if (!slab)
  panic("Invalid index:%d slab:%d (NULL) for table:%p\n",
        idx, (ofst >> table->slab_shift), table);
 assert(slab->lt_id.idx <= idx && (slab->lt_id.idx + table->slab_elem) > idx);
 return lt_elem_ofst_slab(slab, table->slab_msk, ofst);
}
