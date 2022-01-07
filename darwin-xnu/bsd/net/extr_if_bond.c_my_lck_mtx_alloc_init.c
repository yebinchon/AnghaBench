
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int lck_grp_t ;
typedef int lck_attr_t ;


 int * lck_attr_alloc_init () ;
 int lck_attr_free (int *) ;
 int * lck_mtx_alloc_init (int *,int *) ;

__attribute__((used)) static __inline__ lck_mtx_t *
my_lck_mtx_alloc_init(lck_grp_t * lck_grp)
{
    lck_attr_t * lck_attrs;
    lck_mtx_t * lck_mtx;

    lck_attrs = lck_attr_alloc_init();
    lck_mtx = lck_mtx_alloc_init(lck_grp, lck_attrs);
    lck_attr_free(lck_attrs);
    return (lck_mtx);
}
