
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int VTABLE_PREFIX ;
 int check (char const*) ;
 int finish ;
 int require_action (int,int ,int ) ;
 scalar_t__ strlcat (char*,char const*,scalar_t__) ;
 scalar_t__ strlcpy (char*,int ,scalar_t__) ;

kern_return_t
kxld_sym_get_vtable_name_from_class_name(const char *class_name,
    char vtable_name[], u_long vtable_name_len)
{
    kern_return_t rval = KERN_FAILURE;
    u_long outlen = 0;

    check(class_name);
    check(vtable_name);

    outlen = strlcpy(vtable_name, VTABLE_PREFIX, vtable_name_len);
    require_action(outlen < vtable_name_len, finish,
        rval=KERN_FAILURE);

    outlen = strlcat(vtable_name, class_name, vtable_name_len);
    require_action(outlen < vtable_name_len, finish,
        rval=KERN_FAILURE);

    rval = KERN_SUCCESS;
finish:
    return rval;
}
