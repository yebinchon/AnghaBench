
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static int Devices_IsValidForFilename(char ch)
{
 if ((ch >= 'A' && ch <= 'Z')
  || (ch >= 'a' && ch <= 'z')
  || (ch >= '0' && ch <= '9'))
  return TRUE;
 switch (ch) {
 case '!':
 case '#':
 case '$':
 case '&':
 case '\'':
 case '(':
 case ')':
 case '*':
 case '-':
 case '.':
 case '?':
 case '@':
 case '_':
  return TRUE;
 default:
  return FALSE;
 }
}
