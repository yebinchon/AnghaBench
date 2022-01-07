
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
CompareStrings(const void *leftElement, const void *rightElement)
{
 const char *leftString = *((const char **) leftElement);
 const char *rightString = *((const char **) rightElement);

 return strcmp(leftString, rightString);
}
