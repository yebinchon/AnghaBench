
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool CfgCheckCharForName(char c)
{
 if (c >= 0 && c <= 31)
 {
  return 0;
 }
 if (c == ' ' || c == '\t')
 {
  return 0;
 }
 if (c == '$')
 {
  return 0;
 }
 return 1;
}
