
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ isargsep (char) ;

__attribute__((used)) static boolean_t
israngesep(char c)
{
 if (isargsep(c) || c == '_' || c == ',')
  return (TRUE);
 else
  return (FALSE);
}
