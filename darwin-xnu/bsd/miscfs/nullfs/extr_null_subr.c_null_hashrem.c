
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_node {int dummy; } ;


 int LIST_REMOVE (struct null_node*,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int null_hash ;
 int null_hashmtx ;

void
null_hashrem(struct null_node * xp)
{
 lck_mtx_lock(&null_hashmtx);
 LIST_REMOVE(xp, null_hash);
 lck_mtx_unlock(&null_hashmtx);
}
