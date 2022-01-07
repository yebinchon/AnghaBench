
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CenterPrint (int,int,char const*,int) ;
 int ClearRectangle (int,int,int,int,int) ;
 int GetKeyPress () ;
 int PLATFORM_DisplayScreen () ;

__attribute__((used)) static void BasicUIMessage(const char *msg, int waitforkey)
{
 ClearRectangle(0x94, 1, 22, 38, 22);
 CenterPrint(0x94, 0x9a, msg, 22);
 if (waitforkey)
  GetKeyPress();
 else
  PLATFORM_DisplayScreen();
}
