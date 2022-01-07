
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_uniqidentifierinfo {scalar_t__ p_reserve4; scalar_t__ p_reserve3; scalar_t__ p_reserve2; int p_puniqueid; int p_uuid; int p_uniqueid; } ;
typedef int proc_t ;


 int proc_getexecutableuuid (int ,unsigned char*,int) ;
 int proc_puniqueid (int ) ;
 int proc_uniqueid (int ) ;

void
proc_piduniqidentifierinfo(proc_t p, struct proc_uniqidentifierinfo *p_uniqidinfo)
{
 p_uniqidinfo->p_uniqueid = proc_uniqueid(p);
 proc_getexecutableuuid(p, (unsigned char *)&p_uniqidinfo->p_uuid, sizeof(p_uniqidinfo->p_uuid));
 p_uniqidinfo->p_puniqueid = proc_puniqueid(p);
 p_uniqidinfo->p_reserve2 = 0;
 p_uniqidinfo->p_reserve3 = 0;
 p_uniqidinfo->p_reserve4 = 0;
}
