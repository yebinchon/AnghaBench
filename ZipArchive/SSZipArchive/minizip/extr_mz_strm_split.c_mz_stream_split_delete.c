
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* path_disk; struct TYPE_3__* path_cd; } ;
typedef TYPE_1__ mz_stream_split ;


 int MZ_FREE (TYPE_1__*) ;

void mz_stream_split_delete(void **stream)
{
    mz_stream_split *split = ((void*)0);
    if (stream == ((void*)0))
        return;
    split = (mz_stream_split *)*stream;
    if (split != ((void*)0))
    {
        if (split->path_cd)
            MZ_FREE(split->path_cd);
        if (split->path_disk)
            MZ_FREE(split->path_disk);

        MZ_FREE(split);
    }
    *stream = ((void*)0);
}
