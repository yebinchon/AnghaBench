#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int specialfs; int special; } ;
struct TYPE_15__ {scalar_t__ pixel_data; } ;
struct TYPE_14__ {TYPE_1__* format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {scalar_t__ hw_available; } ;
struct TYPE_11__ {int BitsPerPixel; int /*<<< orphan*/  Bmask; int /*<<< orphan*/  Gmask; int /*<<< orphan*/  Rmask; } ;
typedef  TYPE_2__ SDL_VideoInfo ;
typedef  TYPE_3__ FCEUGI ;

/* Variables and functions */
 int EO_CLIPSIDES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,double,double) ; 
 int /*<<< orphan*/  IconSurface ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,double,double,double,double,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 double NWIDTH ; 
 int /*<<< orphan*/  FUNC8 (void*,int,int,int,int,int,int,int,int) ; 
 int SDL_DOUBLEBUF ; 
 int SDL_FULLSCREEN ; 
 int /*<<< orphan*/  SDL_GL_DOUBLEBUFFER ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 char* FUNC10 () ; 
 TYPE_2__* FUNC11 () ; 
 int SDL_HWPALETTE ; 
 int SDL_HWSURFACE ; 
 int SDL_INIT_VIDEO ; 
 int FUNC12 (int) ; 
 int SDL_OPENGL ; 
 TYPE_4__* FUNC13 (double,double,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 TYPE_6__ Settings ; 
 int _bpp ; 
 scalar_t__ _doublebuf ; 
 scalar_t__ _efx ; 
 scalar_t__ _efxfs ; 
 scalar_t__ _fullscreen ; 
 scalar_t__ _opengl ; 
 int /*<<< orphan*/  _openglip ; 
 int /*<<< orphan*/  _stretchx ; 
 int /*<<< orphan*/  _stretchy ; 
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

int FUNC18(FCEUGI *gi)
{
 const SDL_VideoInfo *vinf;
 int flags=0;

 FUNC2("Initializing video...");

 FUNC1(&srendline,&erendline);

 if(_fullscreen) sponge=Settings.specialfs;
 else sponge=Settings.special;


 #ifdef OPENGL
 usingogl=0;
 if(_opengl && sdlhaveogl && !sponge)
 {
  flags=SDL_OPENGL;
  usingogl=1;
 }
 #endif

 #ifdef EXTGUI
 GUI_SetVideo(_fullscreen, 0, 0);
 #endif

 if(!(FUNC17(SDL_INIT_VIDEO)&SDL_INIT_VIDEO))
  if(FUNC12(SDL_INIT_VIDEO)==-1)
  {
   FUNC0(FUNC10());
   return(0);
  }
 inited|=1;

 FUNC14(0);
 tlines=erendline-srendline+1;

 vinf=FUNC11();

 if(vinf->hw_available)
  flags|=SDL_HWSURFACE;

 if(_fullscreen)
  flags|=SDL_FULLSCREEN;

 flags|=SDL_HWPALETTE;

 //flags|=SDL_DOUBLEBUF;
 #ifdef OPENGL
 if(usingogl)
 {
  FCEU_printf("\n Initializing with OpenGL(Use \"-opengl 0\" to disable).\n");
  if(_doublebuf)
   SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );
 }
 else
 #endif
  if(_doublebuf && (flags&SDL_HWSURFACE))
   flags|=SDL_DOUBLEBUF;

 if(_fullscreen)
 {
  int desbpp=_bpp;

  exs=_xscalefs;
  eys=_yscalefs;
  eefx=_efxfs;

  #ifdef OPENGL
  if(!usingogl) {exs=(int)exs;eys=(int)eys;}
  else desbpp=0;

  if(sponge)
  {
   exs=eys=2;
   if(sponge == 3 || sponge == 4) exs = eys = 3;
   eefx=0;
   if(sponge == 1 || sponge == 3) desbpp = 32;
  }


  if( (usingogl && !_stretchx) || !usingogl)
  #endif
   if(_xres<NWIDTH*exs || exs <= 0.01)
   {
    FUNC0("xscale out of bounds.");
    FUNC7();
    return(0);
   }

  #ifdef OPENGL
  if( (usingogl && !_stretchy) || !usingogl)
  #endif
   if(_yres<tlines*eys || eys <= 0.01)
   {
    FUNC0("yscale out of bounds.");
    FUNC7();
    return(0);
   }

  #ifdef EXTGUI
  GUI_SetVideo(_fullscreen, _xres, _yres);
  #endif

  #ifdef OPENGL
  if(!(screen = SDL_SetVideoMode(_xres, _yres, desbpp, flags)))
  #else
  if(!(screen = FUNC13(_xres, _yres, desbpp, flags)))
  #endif
  {
   FUNC0(FUNC10());
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
   // SDL's 32bpp->16bpp code is slighty faster than mine, at least :/
   if(sponge == 1 || sponge == 3) desbpp=32;
  }

  #ifdef OPENGL
  if(!usingogl) {exs=(int)exs;eys=(int)eys;}
  if(exs <= 0.01) 
  {
   FCEUD_PrintError("xscale out of bounds.");
   KillVideo();
   return(0);
  }
  if(eys <= 0.01)
  {
   FCEUD_PrintError("yscale out of bounds.");
   KillVideo();
   return(0);
  }
  #endif

  #ifdef EXTGUI
  GUI_SetVideo(_fullscreen, (NWIDTH*exs), tlines*eys);
  #endif

  screen = FUNC13((NWIDTH*exs), tlines*eys, desbpp, flags);
 }
 curbpp=screen->format->BitsPerPixel;
 if(!screen)
 {
  FUNC0(FUNC10());
  FUNC7();
  return(0);
 }
 //BlitBuf=SDL_CreateRGBSurface(SDL_HWSURFACE,256,240,screen->format->BitsPerPixel,screen->format->Rmask,screen->format->Gmask,screen->format->Bmask,0);

 inited=1;

 FUNC3(" Video Mode: %d x %d x %d bpp %s\n",screen->w,screen->h,screen->format->BitsPerPixel,_fullscreen?"full screen":"");
 if(curbpp!=16 && curbpp!=24 && curbpp!=8 && curbpp!=32)
 {
  FUNC3("  Sorry, %dbpp modes are not supported by FCE Ultra.  Supported bit depths are 8bpp, 16bpp, and 32bpp.\n",curbpp);
  FUNC7();
  return(0);
 }

 if(gi->name)
  FUNC15(gi->name,gi->name);
 else
  FUNC15("FCE Ultra","FCE Ultra");

 #ifdef LSB_FIRST
 IconSurface=SDL_CreateRGBSurfaceFrom((void *)fceu_playicon.pixel_data,32,32,24,32*3,0xFF,0xFF00,0xFF0000,0x00);
 #else
 IconSurface=FUNC8((void *)fceu_playicon.pixel_data,32,32,24,32*3,0xFF0000,0xFF00,0xFF,0x00);
 #endif

 FUNC16(IconSurface,0);

 paletterefresh=1;

 if(curbpp>8)
 #ifdef OPENGL
  if(!usingogl)
 #endif
  FUNC5(curbpp>>3,screen->format->Rmask,screen->format->Gmask,screen->format->Bmask,eefx,sponge);
 #ifdef OPENGL
 if(usingogl)
  if(!InitOpenGL((eoptions&EO_CLIPSIDES)?8:0,256-((eoptions&EO_CLIPSIDES)?8:0),srendline,erendline+1,exs,eys,eefx,_openglip,_stretchx,_stretchy,screen))
  {
   FCEUD_PrintError("Error initializing OpenGL.");
   KillVideo();
   return(0);
  }
 #endif
 return 1;
}