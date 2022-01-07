
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dtat_name; scalar_t__ dtat_data; scalar_t__ dtat_class; } ;
typedef TYPE_1__ dtrace_attribute_t ;


 scalar_t__ DTRACE_CLASS_MAX ;
 scalar_t__ DTRACE_STABILITY_MAX ;

__attribute__((used)) static int
dtrace_badattr(const dtrace_attribute_t *a)
{
 return (a->dtat_name > DTRACE_STABILITY_MAX ||
     a->dtat_data > DTRACE_STABILITY_MAX ||
     a->dtat_class > DTRACE_CLASS_MAX);
}
