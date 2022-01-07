
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_SEC_DEV_REC ;
typedef int BD_ADDR ;


 int BTM_TRACE_EVENT (char*) ;
 int * btm_find_dev (int ) ;
 int * btm_sec_alloc_dev (int ) ;

tBTM_SEC_DEV_REC *btm_find_or_alloc_dev (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    BTM_TRACE_EVENT ("btm_find_or_alloc_dev\n");
    if ((p_dev_rec = btm_find_dev (bd_addr)) == ((void*)0)) {


        p_dev_rec = btm_sec_alloc_dev (bd_addr);
    }
    return (p_dev_rec);
}
