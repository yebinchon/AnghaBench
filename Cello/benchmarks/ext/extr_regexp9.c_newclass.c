
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reclass ;


 scalar_t__ NCLASS ;
 int * classp ;
 scalar_t__ nclass ;
 int regerr2 (char*,scalar_t__) ;

__attribute__((used)) static Reclass*
newclass(void)
{
 if(nclass >= NCLASS)
  regerr2("too many character classes; limit", NCLASS+'0');
 return &(classp[nclass++]);
}
