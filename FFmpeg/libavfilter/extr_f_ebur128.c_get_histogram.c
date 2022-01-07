
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {scalar_t__ loudness; int energy; } ;


 scalar_t__ ABS_THRES ;
 int ENERGY (scalar_t__) ;
 scalar_t__ HIST_GRAIN ;
 int HIST_SIZE ;
 struct hist_entry* av_calloc (int,int) ;

__attribute__((used)) static struct hist_entry *get_histogram(void)
{
    int i;
    struct hist_entry *h = av_calloc(HIST_SIZE, sizeof(*h));

    if (!h)
        return ((void*)0);
    for (i = 0; i < HIST_SIZE; i++) {
        h[i].loudness = i / (double)HIST_GRAIN + ABS_THRES;
        h[i].energy = ENERGY(h[i].loudness);
    }
    return h;
}
