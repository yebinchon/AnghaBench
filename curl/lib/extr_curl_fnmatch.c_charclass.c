
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_class ;


 int CCLASS_DIGIT ;
 int CCLASS_LOWER ;
 int CCLASS_OTHER ;
 int CCLASS_UPPER ;
 scalar_t__ ISDIGIT (unsigned char) ;
 scalar_t__ ISLOWER (unsigned char) ;
 scalar_t__ ISUPPER (unsigned char) ;

__attribute__((used)) static char_class charclass(unsigned char c)
{
  if(ISUPPER(c))
    return CCLASS_UPPER;
  if(ISLOWER(c))
    return CCLASS_LOWER;
  if(ISDIGIT(c))
    return CCLASS_DIGIT;
  return CCLASS_OTHER;
}
