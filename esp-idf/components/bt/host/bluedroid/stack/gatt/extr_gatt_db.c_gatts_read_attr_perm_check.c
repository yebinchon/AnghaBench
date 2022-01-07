
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ p_attr_list; } ;
typedef TYPE_1__ tGATT_SVC_DB ;
typedef int tGATT_STATUS ;
typedef int tGATT_SEC_FLAG ;
struct TYPE_6__ {scalar_t__ handle; scalar_t__ p_next; } ;
typedef TYPE_2__ tGATT_ATTR16 ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
typedef int BOOLEAN ;


 int GATT_NOT_FOUND ;
 int gatts_check_attr_readability (TYPE_2__*,int ,int ,int ,int ) ;

tGATT_STATUS gatts_read_attr_perm_check(tGATT_SVC_DB *p_db,
                                        BOOLEAN is_long,
                                        UINT16 handle,
                                        tGATT_SEC_FLAG sec_flag,
                                        UINT8 key_size)
{
    tGATT_STATUS status = GATT_NOT_FOUND;
    tGATT_ATTR16 *p_attr;

    if (p_db && p_db->p_attr_list) {
        p_attr = (tGATT_ATTR16 *)p_db->p_attr_list;

        while (p_attr && handle >= p_attr->handle) {
            if (p_attr->handle == handle) {
                status = gatts_check_attr_readability (p_attr, 0,
                                                       is_long,
                                                       sec_flag, key_size);
                break;
            }
            p_attr = (tGATT_ATTR16 *) p_attr->p_next;
        }
    }

    return status;
}
