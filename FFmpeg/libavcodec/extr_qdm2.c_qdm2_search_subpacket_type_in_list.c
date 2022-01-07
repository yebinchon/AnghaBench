
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* packet; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ QDM2SubPNode ;



__attribute__((used)) static QDM2SubPNode *qdm2_search_subpacket_type_in_list(QDM2SubPNode *list,
                                                        int type)
{
    while (list && list->packet) {
        if (list->packet->type == type)
            return list;
        list = list->next;
    }
    return ((void*)0);
}
