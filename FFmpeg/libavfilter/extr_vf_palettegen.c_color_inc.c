
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hist_node {int nb_entries; struct color_ref* entries; } ;
struct color_ref {scalar_t__ color; int count; } ;


 int AVERROR (int ) ;
 int ENOMEM ;
 struct color_ref* av_dynarray2_add (void**,int*,int,int *) ;
 unsigned int color_hash (scalar_t__) ;

__attribute__((used)) static int color_inc(struct hist_node *hist, uint32_t color)
{
    int i;
    const unsigned hash = color_hash(color);
    struct hist_node *node = &hist[hash];
    struct color_ref *e;

    for (i = 0; i < node->nb_entries; i++) {
        e = &node->entries[i];
        if (e->color == color) {
            e->count++;
            return 0;
        }
    }

    e = av_dynarray2_add((void**)&node->entries, &node->nb_entries,
                         sizeof(*node->entries), ((void*)0));
    if (!e)
        return AVERROR(ENOMEM);
    e->color = color;
    e->count = 1;
    return 1;
}
