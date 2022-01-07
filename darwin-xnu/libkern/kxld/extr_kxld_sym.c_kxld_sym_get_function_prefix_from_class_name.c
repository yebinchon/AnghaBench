
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 int OSOBJ_PREFIX ;
 int check (char const*) ;
 int finish ;
 int require (int,int ) ;
 scalar_t__ strlcat (char*,char const*,scalar_t__) ;
 scalar_t__ strlcpy (char*,int ,scalar_t__) ;

u_long
kxld_sym_get_function_prefix_from_class_name(const char *class_name,
    char function_prefix[], u_long function_prefix_len)
{
    u_long rval = 0;
    u_long outlen = 0;

    check(class_name);
    check(function_prefix);

    outlen = strlcpy(function_prefix, OSOBJ_PREFIX, function_prefix_len);
    require(outlen < function_prefix_len, finish);

    outlen = strlcat(function_prefix, class_name, function_prefix_len);
    require(outlen < function_prefix_len, finish);

    rval = outlen;
finish:
    return rval;
}
