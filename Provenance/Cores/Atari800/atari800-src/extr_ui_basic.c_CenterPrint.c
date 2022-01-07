
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Print (int,int,char const*,int,int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void CenterPrint(int fg, int bg, const char *string, int y)
{
 int length = strlen(string);
 Print(fg, bg, string, (length < 38) ? (40 - length) >> 1 : 1, y, 38);
}
