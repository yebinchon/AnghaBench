
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_t ;
typedef int lck_grp_attr_t ;


 int * lck_grp_alloc_init (char const*,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_grp_attr_free (int *) ;

__attribute__((used)) static inline lck_grp_t *
my_lck_grp_alloc_init(const char * grp_name)
{
 lck_grp_t * grp;
 lck_grp_attr_t * grp_attrs;

 grp_attrs = lck_grp_attr_alloc_init();
 grp = lck_grp_alloc_init(grp_name, grp_attrs);
 lck_grp_attr_free(grp_attrs);
 return (grp);
}
