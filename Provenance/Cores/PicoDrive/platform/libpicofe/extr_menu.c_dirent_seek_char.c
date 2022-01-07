
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int * d_name; } ;


 char tolower_simple (int ) ;

__attribute__((used)) static int dirent_seek_char(struct dirent **namelist, int len, int sel, char c)
{
 int i;

 sel++;
 for (i = sel + 1; ; i++) {
  if (i >= len)
   i = 1;
  if (i == sel)
   break;

  if (tolower_simple(namelist[i]->d_name[0]) == c)
   break;
 }

 return i - 1;
}
