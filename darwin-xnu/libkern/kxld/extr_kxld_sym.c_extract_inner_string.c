
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (char const*) ;
 int finish ;
 int require_action (int,int ,int ) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static kern_return_t
extract_inner_string(const char *str, const char *prefix, const char *suffix,
    char *buf, u_long len)
{
    kern_return_t rval = KERN_FAILURE;
    u_long prelen = 0, suflen = 0, striplen = 0;

    check(str);
    check(buf);

    prelen = (prefix) ? strlen(prefix) : 0;
    suflen = (suffix) ? strlen(suffix) : 0;
    striplen = strlen(str) - prelen - suflen;

    require_action(striplen < len, finish, rval=KERN_FAILURE);

    strncpy(buf, str + prelen, striplen);
    buf[striplen] = '\0';

    rval = KERN_SUCCESS;
finish:
    return rval;
}
