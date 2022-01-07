
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t get_size_impl (char*,size_t) ;

__attribute__((used)) static size_t
get_huge_size(size_t ind)
{

 return (get_size_impl("arenas.hchunk.0.size", ind));
}
