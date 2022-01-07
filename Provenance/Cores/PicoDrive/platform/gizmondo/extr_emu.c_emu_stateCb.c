
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sleep (int ) ;
 int blit (char*,char const*) ;
 int clearArea (int ) ;
 int * fb_lock (int) ;
 int fb_unlock () ;
 int * giz_screen ;

void emu_stateCb(const char *str)
{
 if (giz_screen != ((void*)0)) fb_unlock();
 giz_screen = fb_lock(1);

 clearArea(0);
 blit("", str);

 fb_unlock();
 giz_screen = ((void*)0);

 Sleep(0);
}
