
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int kern_return_t ;


 char const* FINAL_CLASS_TOKEN ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int OSOBJ_PREFIX ;
 int check (char const*) ;
 int finish ;
 int require_action (int,int ,int ) ;
 scalar_t__ strlcat (char*,char const*,scalar_t__) ;
 scalar_t__ strlcpy (char*,int ,scalar_t__) ;

kern_return_t
kxld_sym_get_final_sym_name_from_class_name(const char *class_name,
    char final_sym_name[], u_long final_sym_name_len)
{
    kern_return_t rval = KERN_FAILURE;
    u_long outlen = 0;

    check(class_name);
    check(final_sym_name);

    outlen = strlcpy(final_sym_name, OSOBJ_PREFIX, final_sym_name_len);
    require_action(outlen < final_sym_name_len, finish,
        rval=KERN_FAILURE);

    outlen = strlcat(final_sym_name, class_name, final_sym_name_len);
    require_action(outlen < final_sym_name_len, finish,
        rval=KERN_FAILURE);

    outlen = strlcat(final_sym_name, FINAL_CLASS_TOKEN, final_sym_name_len);
    require_action(outlen < final_sym_name_len, finish,
        rval=KERN_FAILURE);

    rval = KERN_SUCCESS;

finish:
    return rval;
}
