
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int handle; } ;
struct TYPE_14__ {TYPE_2__ x11; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_11__ {int target; } ;
struct TYPE_15__ {int type; TYPE_1__ xselection; } ;
typedef TYPE_5__ XEvent ;
struct TYPE_13__ {int SAVE_TARGETS; int display; int CLIPBOARD_MANAGER; } ;
struct TYPE_16__ {TYPE_3__ x11; } ;


 int CurrentTime ;
 int None ;



 scalar_t__ XCheckIfEvent (int ,TYPE_5__*,int ,int *) ;
 int XConvertSelection (int ,int ,int ,int ,int ,int ) ;
 TYPE_9__ _glfw ;
 int handleSelectionClear (TYPE_5__*) ;
 int handleSelectionRequest (TYPE_5__*) ;
 int isSelectionEvent ;
 int selectDisplayConnection (int *) ;

__attribute__((used)) static void pushSelectionToManager(_GLFWwindow* window)
{
    XConvertSelection(_glfw.x11.display,
                      _glfw.x11.CLIPBOARD_MANAGER,
                      _glfw.x11.SAVE_TARGETS,
                      None,
                      window->x11.handle,
                      CurrentTime);

    for (;;)
    {
        XEvent event;

        while (XCheckIfEvent(_glfw.x11.display, &event, isSelectionEvent, ((void*)0)))
        {
            switch (event.type)
            {
                case 128:
                    handleSelectionRequest(&event);
                    break;

                case 130:
                    handleSelectionClear(&event);
                    break;

                case 129:
                {
                    if (event.xselection.target == _glfw.x11.SAVE_TARGETS)
                    {




                        return;
                    }

                    break;
                }
            }
        }

        selectDisplayConnection(((void*)0));
    }
}
