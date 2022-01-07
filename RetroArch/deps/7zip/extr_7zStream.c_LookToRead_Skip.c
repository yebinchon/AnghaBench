
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos; } ;
typedef int SRes ;
typedef TYPE_1__ CLookToRead ;


 int SZ_OK ;

__attribute__((used)) static SRes LookToRead_Skip(void *pp, size_t offset)
{
   CLookToRead *p = (CLookToRead *)pp;
   p->pos += offset;
   return SZ_OK;
}
