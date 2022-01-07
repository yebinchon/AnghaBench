
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct flow_divert_trie {scalar_t__ child_maps_free_next; scalar_t__ child_maps_count; } ;


 int NULL_TRIE_IDX ;

__attribute__((used)) static uint16_t
trie_child_map_alloc(struct flow_divert_trie *trie)
{
 if (trie->child_maps_free_next < trie->child_maps_count) {
  return trie->child_maps_free_next++;
 } else {
  return NULL_TRIE_IDX;
 }
}
