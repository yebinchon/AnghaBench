
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int s_mlock; } ;


 int lck_mtx_unlock (int *) ;

void
session_unlock(struct session * sess)
{
 lck_mtx_unlock(&sess->s_mlock);
}
