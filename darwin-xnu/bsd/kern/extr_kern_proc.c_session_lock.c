
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int s_mlock; } ;


 int lck_mtx_lock (int *) ;

void
session_lock(struct session * sess)
{
 lck_mtx_lock(&sess->s_mlock);
}
