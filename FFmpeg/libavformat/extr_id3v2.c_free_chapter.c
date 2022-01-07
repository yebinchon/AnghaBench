
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int meta; struct TYPE_3__* element_id; } ;
typedef TYPE_1__ ID3v2ExtraMetaCHAP ;


 int av_dict_free (int *) ;
 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void free_chapter(void *obj)
{
    ID3v2ExtraMetaCHAP *chap = obj;
    av_freep(&chap->element_id);
    av_dict_free(&chap->meta);
    av_freep(&chap);
}
