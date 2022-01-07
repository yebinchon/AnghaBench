
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynstring {int * buf; scalar_t__ len; scalar_t__ size; } ;



__attribute__((used)) static void dynstring_init(struct dynstring *ds)
{
   ds->size = 0;
   ds->len = 0;
   ds->buf = ((void*)0);
}
