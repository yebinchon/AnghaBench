
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtat_class; int dtat_data; int dtat_name; } ;
typedef TYPE_1__ dtrace_attribute_t ;
typedef int dof_attr_t ;


 int DOF_ATTR_CLASS (int const) ;
 int DOF_ATTR_DATA (int const) ;
 int DOF_ATTR_NAME (int const) ;

__attribute__((used)) static void
dtrace_dofattr2attr(dtrace_attribute_t *attr, const dof_attr_t dofattr)
{
 attr->dtat_name = DOF_ATTR_NAME(dofattr);
 attr->dtat_data = DOF_ATTR_DATA(dofattr);
 attr->dtat_class = DOF_ATTR_CLASS(dofattr);
}
