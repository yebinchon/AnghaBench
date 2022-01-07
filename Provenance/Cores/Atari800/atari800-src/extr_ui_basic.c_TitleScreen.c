
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CenterPrint (int,int,char const*,int ) ;

__attribute__((used)) static void TitleScreen(const char *title)
{
 CenterPrint(0x9a, 0x94, title, 0);
}
