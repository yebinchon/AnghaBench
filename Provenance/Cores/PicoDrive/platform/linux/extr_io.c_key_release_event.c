
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP2X_A ;
 int GP2X_B ;
 int GP2X_DOWN ;
 int GP2X_L ;
 int GP2X_LEFT ;
 int GP2X_PUSH ;
 int GP2X_R ;
 int GP2X_RIGHT ;
 int GP2X_SELECT ;
 int GP2X_START ;
 int GP2X_UP ;
 int GP2X_VOL_DOWN ;
 int GP2X_VOL_UP ;
 int GP2X_X ;
 int GP2X_Y ;
 int current_keys ;

__attribute__((used)) static void key_release_event(int keycode)
{
 switch (keycode)
 {
  case 111:
  case 0x62: current_keys &= ~GP2X_UP; break;
  case 116:
  case 0x68: current_keys &= ~GP2X_DOWN; break;
  case 113:
  case 0x64: current_keys &= ~GP2X_LEFT; break;
  case 114:
  case 0x66: current_keys &= ~GP2X_RIGHT; break;
  case 0x24: current_keys &= ~GP2X_START; break;
  case 0x23: current_keys &= ~GP2X_SELECT;break;
  case 0x34: current_keys &= ~GP2X_A; break;
  case 0x35: current_keys &= ~GP2X_X; break;
  case 0x36: current_keys &= ~GP2X_B; break;
  case 0x37: current_keys &= ~GP2X_Y; break;
  case 0x27: current_keys &= ~GP2X_L; break;
  case 0x28: current_keys &= ~GP2X_R; break;
  case 0x29: current_keys &= ~GP2X_PUSH; break;
  case 0x18: current_keys &= ~GP2X_VOL_DOWN;break;
  case 0x19: current_keys &= ~GP2X_VOL_UP;break;
 }
}
