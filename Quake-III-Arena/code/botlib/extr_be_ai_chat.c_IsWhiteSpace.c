
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qfalse ;
 int qtrue ;

int IsWhiteSpace(char c)
{
 if ((c >= 'a' && c <= 'z')
  || (c >= 'A' && c <= 'Z')
  || (c >= '0' && c <= '9')
  || c == '(' || c == ')'
  || c == '?' || c == ':'
  || c == '\''|| c == '/'
  || c == ',' || c == '.'
  || c == '[' || c == ']'
  || c == '-' || c == '_'
  || c == '+' || c == '=') return qfalse;
 return qtrue;
}
