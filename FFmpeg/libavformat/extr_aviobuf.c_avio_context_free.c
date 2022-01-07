
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int av_freep (int **) ;

void avio_context_free(AVIOContext **ps)
{
    av_freep(ps);
}
