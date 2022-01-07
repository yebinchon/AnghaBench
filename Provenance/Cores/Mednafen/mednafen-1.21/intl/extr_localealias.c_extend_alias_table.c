
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias_map {int dummy; } ;


 struct alias_map* map ;
 int maxmap ;
 scalar_t__ realloc (struct alias_map*,size_t) ;

__attribute__((used)) static int
extend_alias_table ()
{
  size_t new_size;
  struct alias_map *new_map;

  new_size = maxmap == 0 ? 100 : 2 * maxmap;
  new_map = (struct alias_map *) realloc (map, (new_size
      * sizeof (struct alias_map)));
  if (new_map == ((void*)0))

    return -1;

  map = new_map;
  maxmap = new_size;
  return 0;
}
