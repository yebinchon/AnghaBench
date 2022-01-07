
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entries_to_show; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int av_dict_free (int *) ;
 int log_mutex ;
 int pthread_mutex_destroy (int *) ;
 TYPE_1__* sections ;

__attribute__((used)) static void ffprobe_cleanup(int ret)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(sections); i++)
        av_dict_free(&(sections[i].entries_to_show));




}
