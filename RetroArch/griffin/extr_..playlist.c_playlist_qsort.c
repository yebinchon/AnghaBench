
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct TYPE_3__ {int size; int entries; } ;
typedef TYPE_1__ playlist_t ;


 scalar_t__ playlist_qsort_func ;
 int qsort (int ,int ,int,int (*) (void const*,void const*)) ;

void playlist_qsort(playlist_t *playlist)
{
   qsort(playlist->entries, playlist->size,
         sizeof(struct playlist_entry),
         (int (*)(const void *, const void *))playlist_qsort_func);
}
