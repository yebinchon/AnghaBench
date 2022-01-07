
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dss_mtx ;
 scalar_t__ have_dss ;
 int malloc_mutex_postfork_child (int *) ;

void
chunk_dss_postfork_child(void)
{

 if (have_dss)
  malloc_mutex_postfork_child(&dss_mtx);
}
