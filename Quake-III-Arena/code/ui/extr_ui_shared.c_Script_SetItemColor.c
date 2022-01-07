
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_5__ {int * borderColor; int flags; int * foreColor; int * backColor; } ;
struct TYPE_6__ {TYPE_1__ window; int parent; } ;
typedef TYPE_2__ itemDef_t ;


 int Color_Parse (char**,int **) ;
 TYPE_2__* Menu_GetMatchingItemByNumber (int ,int,char const*) ;
 int Menu_ItemsMatchingGroup (int ,char const*) ;
 scalar_t__ Q_stricmp (char const*,char*) ;
 scalar_t__ String_Parse (char**,char const**) ;
 int WINDOW_FORECOLORSET ;

void Script_SetItemColor(itemDef_t *item, char **args) {
  const char *itemname;
  const char *name;
  vec4_t color;
  int i;
  vec4_t *out;

  if (String_Parse(args, &itemname) && String_Parse(args, &name)) {
    itemDef_t *item2;
    int j;
    int count = Menu_ItemsMatchingGroup(item->parent, itemname);

    if (!Color_Parse(args, &color)) {
      return;
    }

    for (j = 0; j < count; j++) {
      item2 = Menu_GetMatchingItemByNumber(item->parent, j, itemname);
      if (item2 != ((void*)0)) {
        out = ((void*)0);
        if (Q_stricmp(name, "backcolor") == 0) {
          out = &item2->window.backColor;
        } else if (Q_stricmp(name, "forecolor") == 0) {
          out = &item2->window.foreColor;
          item2->window.flags |= WINDOW_FORECOLORSET;
        } else if (Q_stricmp(name, "bordercolor") == 0) {
          out = &item2->window.borderColor;
        }

        if (out) {
          for (i = 0; i < 4; i++) {
            (*out)[i] = color[i];
          }
        }
      }
    }
  }
}
