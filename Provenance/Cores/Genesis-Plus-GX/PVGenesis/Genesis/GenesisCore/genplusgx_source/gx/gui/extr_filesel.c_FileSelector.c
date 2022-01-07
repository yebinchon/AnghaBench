
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;


struct TYPE_25__ {int selected; int max_buttons; TYPE_4__** arrows; } ;
typedef TYPE_3__ gui_menu ;
struct TYPE_26__ {int state; int x; int w; int y; int h; } ;
typedef TYPE_4__ gui_butn ;
struct TYPE_29__ {TYPE_1__* entries; } ;
struct TYPE_24__ {int x; int y; int angle; scalar_t__ valid; } ;
struct TYPE_28__ {short keys; TYPE_2__ ir; } ;
struct TYPE_27__ {int width; int height; } ;
struct TYPE_23__ {int filetype; } ;
struct TYPE_22__ {int comment; } ;
struct TYPE_21__ {int state; TYPE_5__* texture; int * data; } ;
struct TYPE_20__ {scalar_t__ bg_overlay; } ;
struct TYPE_19__ {char* filename; scalar_t__ flags; } ;
typedef int FILE ;


 int BUTTON_VISIBLE ;
 char** Cart_dir ;
 void** Cart_png ;
 char* DEFAULT_PATH ;
 int FILETYPE_MAX ;
 int GUI_DeleteMenu (TYPE_3__*) ;
 int GUI_DrawMenu (TYPE_3__*) ;
 int GUI_FadeOut () ;
 int GUI_InitMenu (TYPE_3__*) ;
 int IMAGE_VISIBLE ;
 int LoadFile (int) ;
 int MAXPATHLEN ;
 short PAD_BUTTON_A ;
 short PAD_BUTTON_B ;
 short PAD_BUTTON_DOWN ;
 short PAD_BUTTON_LEFT ;
 short PAD_BUTTON_RIGHT ;
 short PAD_BUTTON_UP ;
 short PAD_TRIGGER_L ;
 short PAD_TRIGGER_R ;
 short PAD_TRIGGER_Z ;
 int ParseDirectory () ;
 int SYS_POWEROFF ;
 int SYS_ResetSystem (int ,int ,int ) ;
 scalar_t__ Shutdown ;
 scalar_t__ UpdateDirectory (int,char*) ;
 TYPE_15__ action_select ;
 TYPE_14__* bg_filesel ;
 TYPE_13__ config ;
 int fclose (int *) ;
 TYPE_12__* filelist ;
 int * fopen (char*,char*) ;
 int gxDrawTextureRotate (TYPE_5__*,int,int,int,int,int ,int) ;
 int gxSetScreen () ;
 int gxTextureClose (TYPE_5__**) ;
 TYPE_5__* gxTextureOpenPNG (int ,int *) ;
 TYPE_8__ history ;
 TYPE_7__ m_input ;
 int maxfiles ;
 TYPE_3__ menu_selector ;
 int offset ;
 char* prev_folder ;
 int selection ;
 int shutdown () ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (int ,char*) ;
 scalar_t__ string_offset ;
 int strlen (char*) ;
 TYPE_5__* w_pointer ;

int FileSelector(int type)
{
  short p;
  int i;
  int old = -1;
  char fname[MAXPATHLEN];
  FILE *snap;
  gui_menu *m = &menu_selector;







  if (config.bg_overlay)
  {
    bg_filesel[1].state |= IMAGE_VISIBLE;
  }
  else
  {
    bg_filesel[1].state &= ~IMAGE_VISIBLE;
  }


  for (i=0; i<FILETYPE_MAX; i++)
  {
    bg_filesel[9+i].state &= ~IMAGE_VISIBLE;
  }


  if (type < 0)
  {

    for (i=0; i<FILETYPE_MAX; i++)
    {
      bg_filesel[9+i].data = Cart_png[i];
    }
  }
  else
  {

    for (i=0; i<FILETYPE_MAX; i++)
    {
      bg_filesel[9+i].data = ((void*)0);
    }


    bg_filesel[9 + type].data = Cart_png[type];
    bg_filesel[9 + type].state |= IMAGE_VISIBLE;
  }


  GUI_InitMenu(m);
  string_offset = 0;

  while (1)
  {

    if (old != selection)
    {

      gxTextureClose(&bg_filesel[8].texture);
      bg_filesel[8].state &= ~IMAGE_VISIBLE;

      old = selection;
      string_offset = 0;

      if (!filelist[selection].flags)
      {

        if (type < 0)
        {

          for (i=0; i<FILETYPE_MAX; i++)
          {
            bg_filesel[9+i].state &= ~IMAGE_VISIBLE;
          }


          type = history.entries[selection].filetype;


          bg_filesel[9 + type].state |= IMAGE_VISIBLE;


          sprintf(fname,"%s/snaps/%s/%s", DEFAULT_PATH, Cart_dir[type], filelist[selection].filename);


          type = -1;
        }
        else
        {

          sprintf(fname,"%s/snaps/%s/%s", DEFAULT_PATH, Cart_dir[type], filelist[selection].filename);
        }


        i = strlen(fname) - 1;
        while ((i > 0) && (fname[i] != '.')) i--;
        if (i > 0) fname[i] = 0;


        strcat(fname, ".png");


        snap = fopen(fname, "rb");
        if (snap)
        {
          bg_filesel[8].texture = gxTextureOpenPNG(0,snap);
          if (bg_filesel[8].texture)
          {
            bg_filesel[8].state |= IMAGE_VISIBLE;
          }
          fclose(snap);
        }
      }
    }


    if (m->selected != -1)
    {

      strcpy(action_select.comment,"");
    }
    else if (filelist[selection].flags)
    {

      strcpy(action_select.comment,"Open Directory");
    }
    else
    {

      strcpy(action_select.comment,"Load File");
    }


    GUI_DrawMenu(m);
    gxSetScreen();

    p = m_input.keys;


    if (p & PAD_BUTTON_DOWN)
    {
      selection++;
      if (selection == maxfiles)
        selection = offset = 0;
      if ((selection - offset) >= 10)
        offset += 10;
    }


    else if (p & PAD_BUTTON_UP)
    {
      selection--;
      if (selection < 0)
      {
        selection = maxfiles - 1;
        offset = maxfiles - 10;
      }
      if (selection < offset)
        offset -= 10;
      if (offset < 0)
        offset = 0;
    }


    else if (p & (PAD_TRIGGER_L | PAD_BUTTON_LEFT))
    {
      if (maxfiles >= 10)
      {
        selection -= 10;
        if (selection < 0)
        {
          selection = offset = 0;
        }
        else if (selection < offset)
        {
          offset -= 10;
          if (offset < 0) offset = 0;
        }
      }
    }


    else if (p & (PAD_TRIGGER_R | PAD_BUTTON_RIGHT))
    {
      if (maxfiles >= 10)
      {
        selection += 10;
        if (selection > maxfiles - 1)
        {

          selection = maxfiles - 1;
          offset = maxfiles - 10;
        }
        else if (selection >= (offset + 10))
        {

          offset += 10;
          if (offset > (maxfiles - 10)) offset = maxfiles - 10;
        }
      }
    }


    else if (p & PAD_TRIGGER_Z)
    {
      GUI_DeleteMenu(m);
      return 0;
    }


    else if (p & PAD_BUTTON_B)
    {
      string_offset = 0;


      if (UpdateDirectory(1, prev_folder))
      {

        maxfiles = ParseDirectory();


        selection = offset = 0;
        old = -1;


        for (i=0; i<maxfiles; i++)
        {
          if ((filelist[i].flags) && !strcmp(prev_folder,filelist[i].filename))
          {
            selection = i;
            while (i >= (offset + 10))
            {
              offset += 10;
              if (offset > (maxfiles - 10)) offset = maxfiles - 10;
            }
            break;
          }
        }
      }
      else
      {

        GUI_DeleteMenu(m);
        return 0;
      }
    }


    else if (p & PAD_BUTTON_A)
    {
      string_offset = 0;


      if (m->selected < m->max_buttons)
      {
        if (filelist[selection].flags)
        {

          UpdateDirectory(0, filelist[selection].filename);


          maxfiles = ParseDirectory();


          selection = offset = 0;
          old = -1;
        }
        else
        {

          int ret = LoadFile(selection);


          GUI_DeleteMenu(m);


          return ret;
        }
      }
    }
  }
}
