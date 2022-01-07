
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UI_tMenuItem ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* FindMenuItem (int *,int) ;
 int UI_ITEM_CHECK ;
 int UI_ITEM_CHECKED ;

__attribute__((used)) static void SetItemChecked(UI_tMenuItem *mip, int option, int checked)
{
 FindMenuItem(mip, option)->flags = checked ? (UI_ITEM_CHECK | UI_ITEM_CHECKED) : UI_ITEM_CHECK;
}
