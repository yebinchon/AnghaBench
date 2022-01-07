
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* p_attr_list; } ;
typedef TYPE_2__ tGATT_SVC_DB ;
struct TYPE_9__ {TYPE_2__ svc_db; } ;
typedef TYPE_3__ tGATT_HDL_LIST_ELEM ;
struct TYPE_7__ {int * attr_val; } ;
struct TYPE_10__ {TYPE_1__ attr_val; } ;
typedef TYPE_4__ tGATT_ATTR_VALUE ;
struct TYPE_11__ {int mask; struct TYPE_11__* p_next; TYPE_4__* p_value; } ;
typedef TYPE_5__ tGATT_ATTR16 ;


 int GATT_ATTR_VALUE_ALLOCATED ;
 int osi_free (int *) ;

void gatt_free_attr_value_buffer(tGATT_HDL_LIST_ELEM *p)
{
    if (p){
        tGATT_SVC_DB *p_db = &(p->svc_db);
        tGATT_ATTR16 *p_attr = p_db->p_attr_list;
        tGATT_ATTR_VALUE *p_value = ((void*)0);

        while(p_attr){
            if (p_attr->mask & GATT_ATTR_VALUE_ALLOCATED){
                p_value = p_attr->p_value;
                if ((p_value != ((void*)0)) && (p_value->attr_val.attr_val != ((void*)0))){
                    osi_free(p_value->attr_val.attr_val);
                }
            }
            p_attr = p_attr->p_next;
        }
    }
}
