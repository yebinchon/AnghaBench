
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
qsort_cmp(const void * _left, const void * _right)
{
    struct symbol * left = (struct symbol *) _left;
    struct symbol * right = (struct symbol *) _right;

    return (strcmp(left->name, right->name));
}
