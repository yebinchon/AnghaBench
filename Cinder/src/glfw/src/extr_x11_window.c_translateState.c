
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ControlMask ;
 int GLFW_MOD_ALT ;
 int GLFW_MOD_CONTROL ;
 int GLFW_MOD_SHIFT ;
 int GLFW_MOD_SUPER ;
 int Mod1Mask ;
 int Mod4Mask ;
 int ShiftMask ;

__attribute__((used)) static int translateState(int state)
{
    int mods = 0;

    if (state & ShiftMask)
        mods |= GLFW_MOD_SHIFT;
    if (state & ControlMask)
        mods |= GLFW_MOD_CONTROL;
    if (state & Mod1Mask)
        mods |= GLFW_MOD_ALT;
    if (state & Mod4Mask)
        mods |= GLFW_MOD_SUPER;

    return mods;
}
