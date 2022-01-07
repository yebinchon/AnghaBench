
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct segment {int dummy; } ;
struct playlist {int cur_seq_no; int start_seq_no; int n_segments; struct segment** segments; } ;



__attribute__((used)) static struct segment *next_segment(struct playlist *pls)
{
    int n = pls->cur_seq_no - pls->start_seq_no + 1;
    if (n >= pls->n_segments)
        return ((void*)0);
    return pls->segments[n];
}
