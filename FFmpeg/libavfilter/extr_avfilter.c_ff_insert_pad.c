
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * AVFilterPad ;
typedef int AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 unsigned int FFMIN (unsigned int,unsigned int) ;
 int ** av_realloc_array (int **,unsigned int,int) ;
 int memcpy (int **,int **,int) ;
 int memmove (int **,int **,int) ;

int ff_insert_pad(unsigned idx, unsigned *count, size_t padidx_off,
                   AVFilterPad **pads, AVFilterLink ***links,
                   AVFilterPad *newpad)
{
    AVFilterLink **newlinks;
    AVFilterPad *newpads;
    unsigned i;

    idx = FFMIN(idx, *count);

    newpads = av_realloc_array(*pads, *count + 1, sizeof(AVFilterPad));
    newlinks = av_realloc_array(*links, *count + 1, sizeof(AVFilterLink*));
    if (newpads)
        *pads = newpads;
    if (newlinks)
        *links = newlinks;
    if (!newpads || !newlinks)
        return AVERROR(ENOMEM);

    memmove(*pads + idx + 1, *pads + idx, sizeof(AVFilterPad) * (*count - idx));
    memmove(*links + idx + 1, *links + idx, sizeof(AVFilterLink*) * (*count - idx));
    memcpy(*pads + idx, newpad, sizeof(AVFilterPad));
    (*links)[idx] = ((void*)0);

    (*count)++;
    for (i = idx + 1; i < *count; i++)
        if ((*links)[i])
            (*(unsigned *)((uint8_t *) (*links)[i] + padidx_off))++;

    return 0;
}
