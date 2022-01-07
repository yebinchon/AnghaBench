
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * list; } ;
typedef TYPE_1__ ePICPixHashElem ;
typedef int ePICPixHash ;


 TYPE_1__* epic_hash_find (int const*,int ) ;

__attribute__((used)) static inline int epic_cache_entries_for_pixel(const ePICPixHash *hash,
                                               uint32_t pix)
{
    ePICPixHashElem *hash_elem = epic_hash_find(hash, pix);

    if (hash_elem != ((void*)0) && hash_elem->list != ((void*)0))
        return 1;

    return 0;
}
