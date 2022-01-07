
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {struct TYPE_6__* next; int pixel; } ;
typedef TYPE_1__ ePICPixListElem ;
struct TYPE_7__ {TYPE_1__* list; } ;
typedef TYPE_2__ ePICPixHashElem ;
typedef int ePICPixHash ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_1__* av_mallocz (int) ;
 TYPE_2__* epic_hash_add (int *,int ) ;
 TYPE_2__* epic_hash_find (int *,int ) ;

__attribute__((used)) static int epic_add_pixel_to_cache(ePICPixHash *hash, uint32_t key, uint32_t pix)
{
    ePICPixListElem *new_elem;
    ePICPixHashElem *hash_elem = epic_hash_find(hash, key);

    if (!hash_elem) {
        if (!(hash_elem = epic_hash_add(hash, key)))
            return AVERROR(ENOMEM);
    }

    new_elem = av_mallocz(sizeof(*new_elem));
    if (!new_elem)
        return AVERROR(ENOMEM);

    new_elem->pixel = pix;
    new_elem->next = hash_elem->list;
    hash_elem->list = new_elem;

    return 0;
}
