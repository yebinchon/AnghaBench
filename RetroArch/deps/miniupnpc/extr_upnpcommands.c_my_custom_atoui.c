
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNSIGNED_INTEGER ;


 scalar_t__ STRTOUI (char const*,int *,int ) ;

__attribute__((used)) static UNSIGNED_INTEGER
my_custom_atoui(const char * s)
{
 return s ? ((UNSIGNED_INTEGER)STRTOUI(s, ((void*)0), 0)) : 0;
}
