
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ESI ;


 size_t SI_COUNT ;
 size_t SI_NONE ;

inline const char* ESI_Name(ESI esi)
{
 static const char * const names[] =
 {
  "<none>",
  "Gamepad",
  "Zapper",
  "Power Pad A",
  "Power Pad B",
  "Arkanoid Paddle",
  "Subor Mouse",
  "SNES Pad",
  "SNES Mouse"
 };

 if(esi >= SI_NONE && esi <= SI_COUNT)
  return names[esi];
 else return "<invalid ESI>";
}
