
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chunk_in_dss (void*) ;
 scalar_t__ have_dss ;
 int maps_coalesce ;

__attribute__((used)) static bool
chunk_merge_default(void *chunk_a, size_t size_a, void *chunk_b, size_t size_b,
    bool committed, unsigned arena_ind)
{

 if (!maps_coalesce)
  return (1);
 if (have_dss && chunk_in_dss(chunk_a) != chunk_in_dss(chunk_b))
  return (1);

 return (0);
}
