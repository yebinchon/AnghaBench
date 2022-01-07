
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_node {int nb_entries; struct color_ref* entries; } ;
struct color_ref {int dummy; } ;


 int HIST_SIZE ;
 struct color_ref** av_malloc_array (int,int) ;

__attribute__((used)) static struct color_ref **load_color_refs(const struct hist_node *hist, int nb_refs)
{
    int i, j, k = 0;
    struct color_ref **refs = av_malloc_array(nb_refs, sizeof(*refs));

    if (!refs)
        return ((void*)0);

    for (j = 0; j < HIST_SIZE; j++) {
        const struct hist_node *node = &hist[j];

        for (i = 0; i < node->nb_entries; i++)
            refs[k++] = &node->entries[i];
    }

    return refs;
}
