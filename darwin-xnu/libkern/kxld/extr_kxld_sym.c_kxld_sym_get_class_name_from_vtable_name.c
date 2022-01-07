
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int VTABLE_PREFIX ;
 int check (char const*) ;
 int extract_inner_string (char const*,int ,int *,char*,int ) ;
 int finish ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_sym_get_class_name_from_vtable_name(const char *vtable_name,
    char class_name[], u_long class_name_len)
{
    kern_return_t rval = KERN_FAILURE;

    check(vtable_name);

    rval = extract_inner_string(vtable_name, VTABLE_PREFIX, ((void*)0),
        class_name, class_name_len);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
    return rval;
}
