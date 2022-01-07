
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inq_info; } ;
typedef TYPE_1__ tINQ_DB_ENT ;
typedef int tBTM_INQ_INFO ;
typedef int * BD_ADDR ;


 int BTM_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* btm_inq_db_find (int *) ;

tBTM_INQ_INFO *BTM_InqDbRead (BD_ADDR p_bda)
{
    BTM_TRACE_API ("BTM_InqDbRead: bd addr [%02x%02x%02x%02x%02x%02x]\n",
                   p_bda[0], p_bda[1], p_bda[2], p_bda[3], p_bda[4], p_bda[5]);

    tINQ_DB_ENT *p_ent = btm_inq_db_find(p_bda);
    if (!p_ent) {
        return ((void*)0);
    }

    return &p_ent->inq_info;
}
