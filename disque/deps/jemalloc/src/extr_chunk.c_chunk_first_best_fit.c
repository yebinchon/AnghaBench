
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_tree_t ;
typedef int extent_node_t ;
typedef int arena_t ;


 size_t CHUNK_CEILING (size_t) ;
 int assert (int) ;
 int extent_node_init (int *,int *,int *,size_t,int,int) ;
 int * extent_tree_szad_nsearch (int *,int *) ;

__attribute__((used)) static extent_node_t *
chunk_first_best_fit(arena_t *arena, extent_tree_t *chunks_szad,
    extent_tree_t *chunks_ad, size_t size)
{
 extent_node_t key;

 assert(size == CHUNK_CEILING(size));

 extent_node_init(&key, arena, ((void*)0), size, 0, 0);
 return (extent_tree_szad_nsearch(chunks_szad, &key));
}
