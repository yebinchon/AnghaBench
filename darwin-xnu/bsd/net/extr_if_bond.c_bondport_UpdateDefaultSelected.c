
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bondport_ref ;


 int SelectedState_UNSELECTED ;
 int bondport_set_selected (int ,int ) ;

__attribute__((used)) static void
bondport_UpdateDefaultSelected(bondport_ref p)
{
    bondport_set_selected(p, SelectedState_UNSELECTED);
    return;
}
