
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt__edge ;


 int stbtt__sort_edges_ins_sort (int *,int) ;
 int stbtt__sort_edges_quicksort (int *,int) ;

__attribute__((used)) static void stbtt__sort_edges(stbtt__edge *p, int n)
{
   stbtt__sort_edges_quicksort(p, n);
   stbtt__sort_edges_ins_sort(p, n);
}
