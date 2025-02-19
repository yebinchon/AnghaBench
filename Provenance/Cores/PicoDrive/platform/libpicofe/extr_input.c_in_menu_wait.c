
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBTN_DOWN ;
 int PBTN_LEFT ;
 int PBTN_RIGHT ;
 int PBTN_UP ;
 int in_menu_wait_any (char*,int) ;

int in_menu_wait(int interesting, char *charcode, int autorep_delay_ms)
{
 static int inp_prev = 0;
 static int repeats = 0;
 int ret, release = 0, wait = 450;

 if (repeats)
  wait = autorep_delay_ms;

 ret = in_menu_wait_any(charcode, wait);
 if (ret == inp_prev)
  repeats++;

 while (!(ret & interesting)) {
  ret = in_menu_wait_any(charcode, -1);
  release = 1;
 }

 if (release || ret != inp_prev)
  repeats = 0;

 inp_prev = ret;


 if ((ret & PBTN_UP) && (ret & PBTN_LEFT)) ret &= ~PBTN_LEFT;
 if ((ret & PBTN_UP) && (ret & PBTN_RIGHT)) ret &= ~PBTN_RIGHT;
 if ((ret & PBTN_DOWN) && (ret & PBTN_LEFT)) ret &= ~PBTN_LEFT;
 if ((ret & PBTN_DOWN) && (ret & PBTN_RIGHT)) ret &= ~PBTN_RIGHT;

 return ret;
}
