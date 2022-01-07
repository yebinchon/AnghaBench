
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdesc_mtx ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static void
fdesc_unlock(void)
{
 lck_mtx_unlock(&fdesc_mtx);
}
