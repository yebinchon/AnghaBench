
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UINT ;


 int MAX_SIZE ;
 int TrimCrlf (char*) ;
 int fgets (char*,int,int ) ;
 int stdin ;

void AnsiGetLineUnix(char *str, UINT size)
{

 if (str == ((void*)0))
 {
  char tmp[MAX_SIZE];
  fgets(tmp, sizeof(tmp) - 1, stdin);
  return;
 }
 if (size <= 1)
 {
  return;
 }


 fgets(str, (int)(size - 1), stdin);

 TrimCrlf(str);
}
