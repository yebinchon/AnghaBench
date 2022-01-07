
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BasicUIMessage (char*,int) ;
 int Box (int,int,int ,int,int,int) ;
 int CenterPrint (int,int,char const*,int ) ;
 int ClearScreen () ;
 int TitleScreen (char const*) ;

__attribute__((used)) static void BasicUIInfoScreen(const char *title, const char *message)
{
 int y = 2;
 ClearScreen();
 TitleScreen(title);
 Box(0x9a, 0x94, 0, 1, 39, 23);
 while (*message != '\n') {
  CenterPrint(0x9a, 0x94, message, y++);
  while (*message++ != '\0');
 }
 BasicUIMessage("Press any key to continue", 1);
}
