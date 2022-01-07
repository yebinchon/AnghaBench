
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIN_loop ;
 int CIN_silent ;
 int trap_CIN_PlayCinematic (char const*,float,float,float,float,int) ;

__attribute__((used)) static int UI_PlayCinematic(const char *name, float x, float y, float w, float h) {
  return trap_CIN_PlayCinematic(name, x, y, w, h, (CIN_loop | CIN_silent));
}
