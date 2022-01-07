
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int formats ;
struct TYPE_9__ {int handle; } ;
struct TYPE_12__ {TYPE_1__ x11; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_10__ {scalar_t__ property; int requestor; int target; } ;
struct TYPE_13__ {TYPE_2__ xselection; } ;
typedef TYPE_5__ XEvent ;
struct TYPE_11__ {char const* clipboardString; int display; int GLFW_SELECTION; int CLIPBOARD; int const COMPOUND_STRING; int const UTF8_STRING; } ;
struct TYPE_14__ {TYPE_3__ x11; } ;
typedef int Atom ;


 int CurrentTime ;
 int GLFW_FORMAT_UNAVAILABLE ;
 scalar_t__ None ;
 int SelectionNotify ;
 int const XA_STRING ;
 int XCheckTypedEvent (int ,int ,TYPE_5__*) ;
 int XConvertSelection (int ,int ,int const,int ,int ,int ) ;
 int XDeleteProperty (int ,int ,scalar_t__) ;
 int XFree (char*) ;
 int XGetSelectionOwner (int ,int ) ;
 TYPE_7__ _glfw ;
 scalar_t__ _glfwGetWindowPropertyX11 (int ,scalar_t__,int ,unsigned char**) ;
 int _glfwInputError (int ,char*) ;
 scalar_t__ findWindowByHandle (int ) ;
 int free (char const*) ;
 char const* strdup (char*) ;
 int waitForEvent (int *) ;

const char* _glfwPlatformGetClipboardString(_GLFWwindow* window)
{
    size_t i;
    const Atom formats[] = { _glfw.x11.UTF8_STRING,
                             _glfw.x11.COMPOUND_STRING,
                             XA_STRING };
    const size_t formatCount = sizeof(formats) / sizeof(formats[0]);

    if (findWindowByHandle(XGetSelectionOwner(_glfw.x11.display,
                                              _glfw.x11.CLIPBOARD)))
    {


        return _glfw.x11.clipboardString;
    }

    free(_glfw.x11.clipboardString);
    _glfw.x11.clipboardString = ((void*)0);

    for (i = 0; i < formatCount; i++)
    {
        char* data;
        XEvent event;

        XConvertSelection(_glfw.x11.display,
                          _glfw.x11.CLIPBOARD,
                          formats[i],
                          _glfw.x11.GLFW_SELECTION,
                          window->x11.handle, CurrentTime);

        while (!XCheckTypedEvent(_glfw.x11.display, SelectionNotify, &event))
            waitForEvent(((void*)0));

        if (event.xselection.property == None)
            continue;

        if (_glfwGetWindowPropertyX11(event.xselection.requestor,
                                      event.xselection.property,
                                      event.xselection.target,
                                      (unsigned char**) &data))
        {
            _glfw.x11.clipboardString = strdup(data);
        }

        XFree(data);

        XDeleteProperty(_glfw.x11.display,
                        event.xselection.requestor,
                        event.xselection.property);

        if (_glfw.x11.clipboardString)
            break;
    }

    if (_glfw.x11.clipboardString == ((void*)0))
    {
        _glfwInputError(GLFW_FORMAT_UNAVAILABLE,
                        "X11: Failed to convert clipboard to string");
    }

    return _glfw.x11.clipboardString;
}
