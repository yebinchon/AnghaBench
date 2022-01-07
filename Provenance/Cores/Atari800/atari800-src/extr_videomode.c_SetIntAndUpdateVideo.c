
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int VIDEOMODE_Update () ;

__attribute__((used)) static int SetIntAndUpdateVideo(int *ptr, int value)
{
 int old_value = *ptr;
 if (old_value != value) {
  *ptr = value;
  if (!VIDEOMODE_Update()) {
   *ptr = old_value;
   return FALSE;
  }
 }
 return TRUE;
}
