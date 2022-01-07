
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int flags; int name; } ;
struct TYPE_5__ {float* color; int style; TYPE_1__ generic; int string; } ;
typedef TYPE_2__ menutext_s ;


 int QMF_GRAYED ;
 int UI_DrawString (int,int,char*,int ,float*) ;
 int strcat (char*,int ) ;
 int strcpy (char*,int ) ;
 float* text_color_disabled ;

__attribute__((used)) static void Text_Draw( menutext_s *t )
{
 int x;
 int y;
 char buff[512];
 float* color;

 x = t->generic.x;
 y = t->generic.y;

 buff[0] = '\0';


 if (t->generic.name)
  strcpy(buff,t->generic.name);


 if (t->string)
  strcat(buff,t->string);

 if (t->generic.flags & QMF_GRAYED)
  color = text_color_disabled;
 else
  color = t->color;

 UI_DrawString( x, y, buff, t->style, color );
}
