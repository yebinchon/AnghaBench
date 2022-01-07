
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static boolean_t
isargsep(char c)
{
 if (c == ' ' || c == '\0' || c == '\t')
  return (TRUE);
 else
  return (FALSE);
}
