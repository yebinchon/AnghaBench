
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



bool IsWordChar(wchar_t c)
{
 if (c >= L'a' && c <= 'z')
 {
  return 1;
 }
 if (c >= L'A' && c <= 'Z')
 {
  return 1;
 }
 if (c >= L'0' && c <= '9')
 {
  return 1;
 }
 if (c == L'_')
 {
  return 1;
 }
 if (c == L'.')
 {
  return 1;
 }
 if (c == L'\"')
 {
  return 1;
 }
 if (c == L'\'')
 {
  return 1;
 }
 if (c == L',')
 {
  return 1;
 }
 if (c == L')')
 {
  return 1;
 }
 if (c == L']')
 {
  return 1;
 }

 return 0;
}
