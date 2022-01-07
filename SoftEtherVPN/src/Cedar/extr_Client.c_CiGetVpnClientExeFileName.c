
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CLIENT_WIN32_EXE_FILENAME ;
 char* CLIENT_WIN32_EXE_FILENAME_IA64 ;
 char* CLIENT_WIN32_EXE_FILENAME_X64 ;
 int Is64 () ;
 scalar_t__ IsX64 () ;

char *CiGetVpnClientExeFileName()
{
 if (Is64() == 0)
 {
  return CLIENT_WIN32_EXE_FILENAME;
 }
 else
 {
  if (IsX64())
  {
   return CLIENT_WIN32_EXE_FILENAME_X64;
  }
  else
  {
   return CLIENT_WIN32_EXE_FILENAME_IA64;
  }
 }
}
