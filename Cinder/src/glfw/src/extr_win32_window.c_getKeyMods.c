
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_MOD_ALT ;
 int GLFW_MOD_CONTROL ;
 int GLFW_MOD_SHIFT ;
 int GLFW_MOD_SUPER ;
 int GetKeyState (int ) ;
 int VK_CONTROL ;
 int VK_LWIN ;
 int VK_MENU ;
 int VK_RWIN ;
 int VK_SHIFT ;

__attribute__((used)) static int getKeyMods(void)
{
    int mods = 0;

    if (GetKeyState(VK_SHIFT) & (1 << 31))
        mods |= GLFW_MOD_SHIFT;
    if (GetKeyState(VK_CONTROL) & (1 << 31))
        mods |= GLFW_MOD_CONTROL;
    if (GetKeyState(VK_MENU) & (1 << 31))
        mods |= GLFW_MOD_ALT;
    if ((GetKeyState(VK_LWIN) | GetKeyState(VK_RWIN)) & (1 << 31))
        mods |= GLFW_MOD_SUPER;

    return mods;
}
