
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_count; int warning_count; } ;
typedef TYPE_1__ display ;



__attribute__((used)) static int
display_rc(const display *d, int strict)
{
   return d->error_count + (strict ? d->warning_count : 0);
}
