
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int specialfs; int special; } ;
struct TYPE_15__ {scalar_t__ pixel_data; } ;
struct TYPE_14__ {TYPE_1__* format; int h; int w; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {scalar_t__ hw_available; } ;
struct TYPE_11__ {int BitsPerPixel; int Bmask; int Gmask; int Rmask; } ;
typedef TYPE_2__ SDL_VideoInfo ;
typedef TYPE_3__ FCEUGI ;


 int EO_CLIPSIDES ;
 int FCEUD_PrintError (char*) ;
 int FCEUI_GetCurrentVidSystem (double*,double*) ;
 int FCEUI_printf (char*) ;
 int FCEU_printf (char*,...) ;
 int GUI_SetVideo (scalar_t__,double,double) ;
 int IconSurface ;
 int InitBlitToHigh (int,int ,int ,int ,scalar_t__,int) ;
 int InitOpenGL (int,int,double,double,double,double,scalar_t__,int ,int ,int ,TYPE_4__*) ;
 int KillVideo () ;
 double NWIDTH ;
 int SDL_CreateRGBSurfaceFrom (void*,int,int,int,int,int,int,int,int) ;
 int SDL_DOUBLEBUF ;
 int SDL_FULLSCREEN ;
 int SDL_GL_DOUBLEBUFFER ;
 int SDL_GL_SetAttribute (int ,int) ;
 char* SDL_GetError () ;
 TYPE_2__* SDL_GetVideoInfo () ;
 int SDL_HWPALETTE ;
 int SDL_HWSURFACE ;
 int SDL_INIT_VIDEO ;
 int SDL_InitSubSystem (int) ;
 int SDL_OPENGL ;
 TYPE_4__* SDL_SetVideoMode (double,double,int,int) ;
 int SDL_ShowCursor (int ) ;
 int SDL_WM_SetCaption (char*,char*) ;
 int SDL_WM_SetIcon (int ,int ) ;
 int SDL_WasInit (int) ;
 TYPE_6__ Settings ;
 int _bpp ;
 scalar_t__ _doublebuf ;
 scalar_t__ _efx ;
 scalar_t__ _efxfs ;
 scalar_t__ _fullscreen ;
 scalar_t__ _opengl ;
 int _openglip ;
 int _stretchx ;
 int _stretchy ;
 double _xres ;
 double _xscale ;
 double _xscalefs ;
 double _yres ;
 double _yscale ;
 double _yscalefs ;
 int curbpp ;
 scalar_t__ eefx ;
 int eoptions ;
 double erendline ;
 double exs ;
 double eys ;
 TYPE_5__ fceu_playicon ;
 int inited ;
 int paletterefresh ;
 TYPE_4__* screen ;
 scalar_t__ sdlhaveogl ;
 int sponge ;
 double srendline ;
 double tlines ;
 int usingogl ;

int InitVideo(FCEUGI *gi)
{
 const SDL_VideoInfo *vinf;
 int flags=0;

 FCEUI_printf("Initializing video...");

 FCEUI_GetCurrentVidSystem(&srendline,&erendline);

 if(_fullscreen) sponge=Settings.specialfs;
 else sponge=Settings.special;
 if(!(SDL_WasInit(SDL_INIT_VIDEO)&SDL_INIT_VIDEO))
  if(SDL_InitSubSystem(SDL_INIT_VIDEO)==-1)
  {
   FCEUD_PrintError(SDL_GetError());
   return(0);
  }
 inited|=1;

 SDL_ShowCursor(0);
 tlines=erendline-srendline+1;

 vinf=SDL_GetVideoInfo();

 if(vinf->hw_available)
  flags|=SDL_HWSURFACE;

 if(_fullscreen)
  flags|=SDL_FULLSCREEN;

 flags|=SDL_HWPALETTE;
  if(_doublebuf && (flags&SDL_HWSURFACE))
   flags|=SDL_DOUBLEBUF;

 if(_fullscreen)
 {
  int desbpp=_bpp;

  exs=_xscalefs;
  eys=_yscalefs;
  eefx=_efxfs;
   if(_xres<NWIDTH*exs || exs <= 0.01)
   {
    FCEUD_PrintError("xscale out of bounds.");
    KillVideo();
    return(0);
   }




   if(_yres<tlines*eys || eys <= 0.01)
   {
    FCEUD_PrintError("yscale out of bounds.");
    KillVideo();
    return(0);
   }
  if(!(screen = SDL_SetVideoMode(_xres, _yres, desbpp, flags)))

  {
   FCEUD_PrintError(SDL_GetError());
   return(0);
  }
 }
 else
 {
  int desbpp=0;

  exs=_xscale;
  eys=_yscale;
  eefx=_efx;

  if(sponge)
  {
   exs=eys=2;
   if(sponge >= 3) exs=eys=3;
   eefx=0;

   if(sponge == 1 || sponge == 3) desbpp=32;
  }
  screen = SDL_SetVideoMode((NWIDTH*exs), tlines*eys, desbpp, flags);
 }
 curbpp=screen->format->BitsPerPixel;
 if(!screen)
 {
  FCEUD_PrintError(SDL_GetError());
  KillVideo();
  return(0);
 }


 inited=1;

 FCEU_printf(" Video Mode: %d x %d x %d bpp %s\n",screen->w,screen->h,screen->format->BitsPerPixel,_fullscreen?"full screen":"");
 if(curbpp!=16 && curbpp!=24 && curbpp!=8 && curbpp!=32)
 {
  FCEU_printf("  Sorry, %dbpp modes are not supported by FCE Ultra.  Supported bit depths are 8bpp, 16bpp, and 32bpp.\n",curbpp);
  KillVideo();
  return(0);
 }

 if(gi->name)
  SDL_WM_SetCaption(gi->name,gi->name);
 else
  SDL_WM_SetCaption("FCE Ultra","FCE Ultra");




 IconSurface=SDL_CreateRGBSurfaceFrom((void *)fceu_playicon.pixel_data,32,32,24,32*3,0xFF0000,0xFF00,0xFF,0x00);


 SDL_WM_SetIcon(IconSurface,0);

 paletterefresh=1;

 if(curbpp>8)



  InitBlitToHigh(curbpp>>3,screen->format->Rmask,screen->format->Gmask,screen->format->Bmask,eefx,sponge);
 return 1;
}
