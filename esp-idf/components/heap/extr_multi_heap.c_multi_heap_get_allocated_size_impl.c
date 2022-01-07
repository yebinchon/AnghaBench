
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multi_heap_handle_t ;
typedef int heap_block_t ;


 int MULTI_HEAP_ASSERT (int,int *) ;
 int assert_valid_block (int ,int *) ;
 size_t block_data_size (int *) ;
 int * get_block (void*) ;
 int is_free (int *) ;

size_t multi_heap_get_allocated_size_impl(multi_heap_handle_t heap, void *p)
{
    heap_block_t *pb = get_block(p);

    assert_valid_block(heap, pb);
    MULTI_HEAP_ASSERT(!is_free(pb), pb);
    return block_data_size(pb);
}
