
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef int kern_return_t ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ KXLDSym ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int METACLASS_TOKEN ;
 int OSOBJ_PREFIX ;
 int check (TYPE_1__ const*) ;
 int extract_inner_string (int ,int ,int ,char*,int ) ;
 int finish ;
 int kxld_sym_is_metaclass (TYPE_1__ const*) ;
 int require_action (int ,int ,int ) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_sym_get_class_name_from_metaclass(const KXLDSym *sym,
    char class_name[], u_long class_name_len)
{
    kern_return_t rval = KERN_FAILURE;

    check(sym);
    require_action(kxld_sym_is_metaclass(sym), finish, rval=KERN_FAILURE);

    rval = extract_inner_string(sym->name, OSOBJ_PREFIX, METACLASS_TOKEN,
        class_name, class_name_len);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
    return rval;
}
