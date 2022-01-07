
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t SelectedState ;


 size_t SelectedState_STANDBY ;

__attribute__((used)) static __inline__ const char *
SelectedStateString(SelectedState s)
{
    static const char * names[] = { "UNSELECTED", "SELECTED", "STANDBY" };

    if (s <= SelectedState_STANDBY) {
 return (names[s]);
    }
    return ("<unknown>");
}
