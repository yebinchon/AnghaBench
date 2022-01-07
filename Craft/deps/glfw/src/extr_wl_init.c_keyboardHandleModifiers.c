
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xkb_mod_mask_t ;
typedef int uint32_t ;
struct wl_keyboard {int dummy; } ;
struct TYPE_4__ {int control_mask; int alt_mask; int shift_mask; int super_mask; unsigned int modifiers; int state; int keymap; } ;
struct TYPE_5__ {TYPE_1__ xkb; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;


 unsigned int GLFW_MOD_ALT ;
 unsigned int GLFW_MOD_CONTROL ;
 unsigned int GLFW_MOD_SHIFT ;
 unsigned int GLFW_MOD_SUPER ;
 int XKB_STATE_DEPRESSED ;
 int XKB_STATE_LATCHED ;
 TYPE_3__ _glfw ;
 int xkb_state_serialize_mods (int ,int) ;
 int xkb_state_update_mask (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void keyboardHandleModifiers(void* data,
                                    struct wl_keyboard* keyboard,
                                    uint32_t serial,
                                    uint32_t modsDepressed,
                                    uint32_t modsLatched,
                                    uint32_t modsLocked,
                                    uint32_t group)
{
    xkb_mod_mask_t mask;
    unsigned int modifiers = 0;

    if (!_glfw.wl.xkb.keymap)
        return;

    xkb_state_update_mask(_glfw.wl.xkb.state,
                          modsDepressed,
                          modsLatched,
                          modsLocked,
                          0,
                          0,
                          group);

    mask = xkb_state_serialize_mods(_glfw.wl.xkb.state,
                                    XKB_STATE_DEPRESSED |
                                    XKB_STATE_LATCHED);
    if (mask & _glfw.wl.xkb.control_mask)
        modifiers |= GLFW_MOD_CONTROL;
    if (mask & _glfw.wl.xkb.alt_mask)
        modifiers |= GLFW_MOD_ALT;
    if (mask & _glfw.wl.xkb.shift_mask)
        modifiers |= GLFW_MOD_SHIFT;
    if (mask & _glfw.wl.xkb.super_mask)
        modifiers |= GLFW_MOD_SUPER;
    _glfw.wl.xkb.modifiers = modifiers;
}
