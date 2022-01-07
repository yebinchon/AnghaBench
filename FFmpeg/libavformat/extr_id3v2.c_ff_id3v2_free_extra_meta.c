
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* free ) (int ) ;} ;
struct TYPE_6__ {struct TYPE_6__* next; int data; int tag; } ;
typedef TYPE_1__ ID3v2ExtraMeta ;
typedef TYPE_2__ ID3v2EMFunc ;


 int av_freep (TYPE_1__**) ;
 TYPE_2__* get_extra_meta_func (int ,int) ;
 int stub1 (int ) ;

void ff_id3v2_free_extra_meta(ID3v2ExtraMeta **extra_meta)
{
    ID3v2ExtraMeta *current = *extra_meta, *next;
    const ID3v2EMFunc *extra_func;

    while (current) {
        if ((extra_func = get_extra_meta_func(current->tag, 1)))
            extra_func->free(current->data);
        next = current->next;
        av_freep(&current);
        current = next;
    }

    *extra_meta = ((void*)0);
}
