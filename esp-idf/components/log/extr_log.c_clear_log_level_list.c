
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uncached_tag_entry_t ;


 int * SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int entries ;
 int free (int *) ;
 scalar_t__ s_log_cache_entry_count ;
 scalar_t__ s_log_cache_max_generation ;
 scalar_t__ s_log_cache_misses ;
 int s_log_tags ;

void clear_log_level_list(void)
{
    uncached_tag_entry_t *it;
    while((it = SLIST_FIRST(&s_log_tags)) != ((void*)0)) {
        SLIST_REMOVE_HEAD(&s_log_tags, entries );
        free(it);
    }
    s_log_cache_entry_count = 0;
    s_log_cache_max_generation = 0;



}
