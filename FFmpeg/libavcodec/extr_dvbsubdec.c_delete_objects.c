
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* object_list; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ DVBSubObject ;
typedef TYPE_2__ DVBSubContext ;


 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void delete_objects(DVBSubContext *ctx)
{
    while (ctx->object_list) {
        DVBSubObject *object = ctx->object_list;

        ctx->object_list = object->next;

        av_freep(&object);
    }
}
