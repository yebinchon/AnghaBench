
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mode; int timeout; int attempt; int min; int max; } ;
typedef TYPE_1__ tBTM_PM_PWR_MD ;
typedef size_t UINT8 ;





 int BTM_PM_MD_ACTIVE ;
 int BTM_PM_MD_FORCE ;
 int BTM_PM_MD_SNIFF ;
 int BTM_PM_NUM_SET_MODES ;
 size_t* btm_pm_md_comp_matrix ;

__attribute__((used)) static tBTM_PM_PWR_MD *btm_pm_compare_modes(tBTM_PM_PWR_MD *p_md1, tBTM_PM_PWR_MD *p_md2, tBTM_PM_PWR_MD *p_res)
{
    UINT8 res;

    if (p_md1 == ((void*)0)) {
        *p_res = *p_md2;
        p_res->mode &= ~BTM_PM_MD_FORCE;

        return p_md2;
    }

    if (p_md2->mode == BTM_PM_MD_ACTIVE || p_md1->mode == BTM_PM_MD_ACTIVE) {
        return ((void*)0);
    }


    if (p_md1->mode & BTM_PM_MD_FORCE) {
        *p_res = *p_md1;
        p_res->mode &= ~BTM_PM_MD_FORCE;
        return p_res;
    }

    if (p_md2->mode & BTM_PM_MD_FORCE) {
        *p_res = *p_md2;
        p_res->mode &= ~BTM_PM_MD_FORCE;
        return p_res;
    }

    res = (p_md1->mode - 1) * BTM_PM_NUM_SET_MODES + (p_md2->mode - 1);
    res = btm_pm_md_comp_matrix[res];
    switch (res) {
    case 129:
        *p_res = *p_md1;
        return p_md1;

    case 128:
        *p_res = *p_md2;
        return p_md2;

    case 130:
        p_res->mode = p_md1->mode;

        p_res->max = (p_md1->max < p_md2->max) ? (p_md1->max) : (p_md2->max);

        p_res->min = (p_md1->min > p_md2->min) ? (p_md1->min) : (p_md2->min);


        if ( p_res->max < p_res->min) {
            return ((void*)0);
        }

        if (p_res->mode == BTM_PM_MD_SNIFF) {

            p_res->attempt = (p_md1->attempt > p_md2->attempt) ? (p_md1->attempt) : (p_md2->attempt);
            p_res->timeout = (p_md1->timeout > p_md2->timeout) ? (p_md1->timeout) : (p_md2->timeout);
        }
        return p_res;
    }
    return ((void*)0);
}
