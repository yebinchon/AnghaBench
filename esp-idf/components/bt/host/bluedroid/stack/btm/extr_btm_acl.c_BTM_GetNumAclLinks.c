
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef size_t UINT16 ;
struct TYPE_4__ {TYPE_1__* acl_db; } ;
struct TYPE_3__ {scalar_t__ in_use; } ;


 size_t MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;

UINT16 BTM_GetNumAclLinks (void)
{
    uint16_t num_acl = 0;

    for (uint16_t i = 0; i < MAX_L2CAP_LINKS; ++i) {
        if (btm_cb.acl_db[i].in_use) {
            ++num_acl;
        }
    }

    return num_acl;
}
