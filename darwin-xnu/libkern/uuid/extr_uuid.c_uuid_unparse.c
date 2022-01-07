
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uuid_string_t ;


 int uuid_unparse_upper (int const,int ) ;

void
uuid_unparse(const uuid_t uu, uuid_string_t out)
{
 uuid_unparse_upper(uu, out);
}
