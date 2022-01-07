
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int * stackshot_kcdata_p ;

boolean_t
stackshot_active()
{
 return (stackshot_kcdata_p != ((void*)0));
}
