
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rectDef_t ;
struct TYPE_3__ {int parent; } ;
typedef TYPE_1__ itemDef_t ;


 scalar_t__ Float_Parse (char**,float*) ;
 scalar_t__ Int_Parse (char**,int*) ;
 int Menu_TransitionItemByName (int ,char const*,int ,int ,int,float) ;
 scalar_t__ Rect_Parse (char**,int *) ;
 scalar_t__ String_Parse (char**,char const**) ;

void Script_Transition(itemDef_t *item, char **args) {
  const char *name;
 rectDef_t rectFrom, rectTo;
  int time;
 float amt;

  if (String_Parse(args, &name)) {
    if ( Rect_Parse(args, &rectFrom) && Rect_Parse(args, &rectTo) && Int_Parse(args, &time) && Float_Parse(args, &amt)) {
      Menu_TransitionItemByName(item->parent, name, rectFrom, rectTo, time, amt);
    }
  }
}
