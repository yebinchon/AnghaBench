
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int info ;
struct TYPE_4__ {int dwOSVersionInfoSize; scalar_t__ dwPlatformId; } ;
typedef TYPE_1__ OSVERSIONINFO ;


 int GetVersionEx (TYPE_1__*) ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 int ZeroMemory (TYPE_1__*,int) ;

bool IsWindowsNt()
{
 OSVERSIONINFO info;

 ZeroMemory(&info, sizeof(info));
 info.dwOSVersionInfoSize = sizeof(info);

 if (GetVersionEx(&info) == 0)
 {
  return 0;
 }

 if (info.dwPlatformId == VER_PLATFORM_WIN32_NT)
 {
  return 1;
 }

 return 0;
}
