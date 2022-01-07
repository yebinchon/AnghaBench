
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int str; } ;
typedef TYPE_1__ LangEntry ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int lang_table_compare(const void *lhs, const void *rhs)
{
    return strcmp(lhs, ((const LangEntry *)rhs)->str);
}
