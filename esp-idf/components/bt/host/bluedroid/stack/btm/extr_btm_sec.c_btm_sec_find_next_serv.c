
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int security_flags; scalar_t__ psm; } ;
typedef TYPE_1__ tBTM_SEC_SERV_REC ;
struct TYPE_6__ {TYPE_1__* sec_serv_rec; } ;


 int BTM_SEC_IN_USE ;
 int BTM_SEC_MAX_SERVICE_RECORDS ;
 TYPE_4__ btm_cb ;

__attribute__((used)) static tBTM_SEC_SERV_REC *btm_sec_find_next_serv (tBTM_SEC_SERV_REC *p_cur)
{
    tBTM_SEC_SERV_REC *p_serv_rec = &btm_cb.sec_serv_rec[0];
    int i;

    for (i = 0; i < BTM_SEC_MAX_SERVICE_RECORDS; i++, p_serv_rec++) {
        if ((p_serv_rec->security_flags & BTM_SEC_IN_USE)
                && (p_serv_rec->psm == p_cur->psm) ) {
            if (p_cur != p_serv_rec) {
                return (p_serv_rec);
            }
        }
    }
    return (((void*)0));
}
