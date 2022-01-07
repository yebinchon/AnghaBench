
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_header {int size; scalar_t__ used; } ;


 scalar_t__ e_heap ;

void free(void *v_addr)
{
 struct malloc_header *bl, *nextbl;


 bl = (struct malloc_header *) (v_addr - sizeof(struct malloc_header));





 while ((nextbl = (struct malloc_header *) ((char *) bl + bl->size))
             && nextbl < (struct malloc_header *) e_heap
      && nextbl->used == 0)
   bl->size += nextbl->size;


 bl->used = 0;
}
