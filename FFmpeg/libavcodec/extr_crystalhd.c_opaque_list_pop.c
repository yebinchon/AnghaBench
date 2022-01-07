
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int avctx; TYPE_1__* tail; TYPE_1__* head; } ;
struct TYPE_5__ {scalar_t__ fake_timestamp; struct TYPE_5__* next; } ;
typedef TYPE_1__ OpaqueList ;
typedef TYPE_2__ CHDContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static OpaqueList *opaque_list_pop(CHDContext *priv, uint64_t fake_timestamp)
{
    OpaqueList *node = priv->head;

    if (!priv->head) {
        av_log(priv->avctx, AV_LOG_ERROR,
               "CrystalHD: Attempted to query non-existent timestamps.\n");
        return ((void*)0);
    }





    if (priv->head->fake_timestamp == fake_timestamp) {
        priv->head = node->next;

        if (!priv->head->next)
            priv->tail = priv->head;

        node->next = ((void*)0);
        return node;
    }





    while (node->next) {
        OpaqueList *current = node->next;
        if (current->fake_timestamp == fake_timestamp) {
            node->next = current->next;

            if (!node->next)
               priv->tail = node;

            current->next = ((void*)0);
            return current;
        } else {
            node = current;
        }
    }

    av_log(priv->avctx, AV_LOG_VERBOSE,
           "CrystalHD: Couldn't match fake_timestamp.\n");
    return ((void*)0);
}
