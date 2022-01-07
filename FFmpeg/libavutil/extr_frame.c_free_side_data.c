
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int metadata; int buf; } ;
typedef TYPE_1__ AVFrameSideData ;


 int av_buffer_unref (int *) ;
 int av_dict_free (int *) ;
 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void free_side_data(AVFrameSideData **ptr_sd)
{
    AVFrameSideData *sd = *ptr_sd;

    av_buffer_unref(&sd->buf);
    av_dict_free(&sd->metadata);
    av_freep(ptr_sd);
}
