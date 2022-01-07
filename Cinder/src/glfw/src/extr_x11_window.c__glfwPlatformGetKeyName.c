
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int available; } ;
struct TYPE_5__ {int* nativeKeys; char const* keyName; int display; int * publicKeys; TYPE_1__ xkb; } ;
struct TYPE_6__ {TYPE_2__ x11; } ;
typedef scalar_t__ KeySym ;


 int GLFW_KEY_UNKNOWN ;
 scalar_t__ NoSymbol ;
 scalar_t__ XkbKeycodeToKeysym (int ,int,int ,int ) ;
 int XkbTranslateKeySym (int ,scalar_t__*,int ,char const*,int,int*) ;
 TYPE_3__ _glfw ;
 int _glfwIsPrintable (int ) ;
 int strlen (char const*) ;

const char* _glfwPlatformGetKeyName(int key, int scancode)
{
    KeySym keysym;
    int extra;

    if (!_glfw.x11.xkb.available)
        return ((void*)0);

    if (key != GLFW_KEY_UNKNOWN)
        scancode = _glfw.x11.nativeKeys[key];

    if (!_glfwIsPrintable(_glfw.x11.publicKeys[scancode]))
        return ((void*)0);

    keysym = XkbKeycodeToKeysym(_glfw.x11.display, scancode, 0, 0);
    if (keysym == NoSymbol)
      return ((void*)0);

    XkbTranslateKeySym(_glfw.x11.display, &keysym, 0,
                       _glfw.x11.keyName, sizeof(_glfw.x11.keyName),
                       &extra);

    if (!strlen(_glfw.x11.keyName))
        return ((void*)0);

    return _glfw.x11.keyName;
}
