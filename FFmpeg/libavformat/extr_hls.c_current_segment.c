
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct segment {int dummy; } ;
struct playlist {size_t cur_seq_no; size_t start_seq_no; struct segment** segments; } ;



__attribute__((used)) static struct segment *current_segment(struct playlist *pls)
{
    return pls->segments[pls->cur_seq_no - pls->start_seq_no];
}
