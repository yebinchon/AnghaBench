
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char const) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

bool
MajorVersionsCompatible(char *leftVersion, char *rightVersion)
{
 const char schemaVersionSeparator = '-';

 char *leftSeperatorPosition = strchr(leftVersion, schemaVersionSeparator);
 char *rightSeperatorPosition = strchr(rightVersion, schemaVersionSeparator);
 int leftComparisionLimit = 0;
 int rightComparisionLimit = 0;

 if (leftSeperatorPosition != ((void*)0))
 {
  leftComparisionLimit = leftSeperatorPosition - leftVersion;
 }
 else
 {
  leftComparisionLimit = strlen(leftVersion);
 }

 if (rightSeperatorPosition != ((void*)0))
 {
  rightComparisionLimit = rightSeperatorPosition - rightVersion;
 }
 else
 {
  rightComparisionLimit = strlen(leftVersion);
 }


 if (leftComparisionLimit != rightComparisionLimit)
 {
  return 0;
 }

 return strncmp(leftVersion, rightVersion, leftComparisionLimit) == 0;
}
