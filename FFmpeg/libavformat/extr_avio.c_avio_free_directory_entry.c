
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ AVIODirEntry ;


 int av_free (int ) ;
 int av_freep (TYPE_1__**) ;

void avio_free_directory_entry(AVIODirEntry **entry)
{
    if (!entry || !*entry)
        return;
    av_free((*entry)->name);
    av_freep(entry);
}
