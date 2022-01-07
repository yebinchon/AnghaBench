
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_4__ {float* backColor; float* foreColor; float* borderColor; int flags; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;


 int Float_Parse (char**,float*) ;
 scalar_t__ Q_stricmp (char const*,char*) ;
 scalar_t__ String_Parse (char**,char const**) ;
 int WINDOW_BACKCOLORSET ;
 int WINDOW_FORECOLORSET ;

void Script_SetColor(itemDef_t *item, char **args) {
  const char *name;
  int i;
  float f;
  vec4_t *out;

  if (String_Parse(args, &name)) {
      out = ((void*)0);
      if (Q_stricmp(name, "backcolor") == 0) {
        out = &item->window.backColor;
        item->window.flags |= WINDOW_BACKCOLORSET;
      } else if (Q_stricmp(name, "forecolor") == 0) {
        out = &item->window.foreColor;
        item->window.flags |= WINDOW_FORECOLORSET;
      } else if (Q_stricmp(name, "bordercolor") == 0) {
        out = &item->window.borderColor;
      }

      if (out) {
        for (i = 0; i < 4; i++) {
          if (!Float_Parse(args, &f)) {
            return;
          }
          (*out)[i] = f;
        }
      }
  }
}
