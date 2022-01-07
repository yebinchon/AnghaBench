
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ List; } ;
typedef TYPE_1__ DiffListIterator ;



__attribute__((used)) static bool DiffListIterator_isValid(DiffListIterator *d)
{
 return (d->List != 0);
}
