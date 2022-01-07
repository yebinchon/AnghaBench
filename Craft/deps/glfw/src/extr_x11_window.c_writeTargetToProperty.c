
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int targets ;
typedef int formats ;
struct TYPE_6__ {scalar_t__ property; scalar_t__ target; int requestor; } ;
typedef TYPE_2__ XSelectionRequestEvent ;
struct TYPE_5__ {scalar_t__ const UTF8_STRING; scalar_t__ const COMPOUND_STRING; scalar_t__ TARGETS; scalar_t__ const MULTIPLE; scalar_t__ ATOM_PAIR; scalar_t__ SAVE_TARGETS; scalar_t__ NULL_; scalar_t__ clipboardString; int display; } ;
struct TYPE_7__ {TYPE_1__ x11; } ;
typedef scalar_t__ Atom ;


 scalar_t__ None ;
 int PropModeReplace ;
 scalar_t__ XA_ATOM ;
 scalar_t__ const XA_STRING ;
 int XChangeProperty (int ,int ,scalar_t__,scalar_t__,int,int ,unsigned char*,unsigned long) ;
 int XFree (scalar_t__*) ;
 TYPE_4__ _glfw ;
 unsigned long _glfwGetWindowProperty (int ,scalar_t__,scalar_t__,unsigned char**) ;
 unsigned long strlen (scalar_t__) ;

__attribute__((used)) static Atom writeTargetToProperty(const XSelectionRequestEvent* request)
{
    int i;
    const Atom formats[] = { _glfw.x11.UTF8_STRING,
                             _glfw.x11.COMPOUND_STRING,
                             XA_STRING };
    const int formatCount = sizeof(formats) / sizeof(formats[0]);

    if (request->property == None)
    {


        return None;
    }

    if (request->target == _glfw.x11.TARGETS)
    {


        const Atom targets[] = { _glfw.x11.TARGETS,
                                 _glfw.x11.MULTIPLE,
                                 _glfw.x11.UTF8_STRING,
                                 _glfw.x11.COMPOUND_STRING,
                                 XA_STRING };

        XChangeProperty(_glfw.x11.display,
                        request->requestor,
                        request->property,
                        XA_ATOM,
                        32,
                        PropModeReplace,
                        (unsigned char*) targets,
                        sizeof(targets) / sizeof(targets[0]));

        return request->property;
    }

    if (request->target == _glfw.x11.MULTIPLE)
    {


        Atom* targets;
        unsigned long i, count;

        count = _glfwGetWindowProperty(request->requestor,
                                       request->property,
                                       _glfw.x11.ATOM_PAIR,
                                       (unsigned char**) &targets);

        for (i = 0; i < count; i += 2)
        {
            int j;

            for (j = 0; j < formatCount; j++)
            {
                if (targets[i] == formats[j])
                    break;
            }

            if (j < formatCount)
            {
                XChangeProperty(_glfw.x11.display,
                                request->requestor,
                                targets[i + 1],
                                targets[i],
                                8,
                                PropModeReplace,
                                (unsigned char*) _glfw.x11.clipboardString,
                                strlen(_glfw.x11.clipboardString));
            }
            else
                targets[i + 1] = None;
        }

        XChangeProperty(_glfw.x11.display,
                        request->requestor,
                        request->property,
                        _glfw.x11.ATOM_PAIR,
                        32,
                        PropModeReplace,
                        (unsigned char*) targets,
                        count);

        XFree(targets);

        return request->property;
    }

    if (request->target == _glfw.x11.SAVE_TARGETS)
    {



        XChangeProperty(_glfw.x11.display,
                        request->requestor,
                        request->property,
                        _glfw.x11.NULL_,
                        32,
                        PropModeReplace,
                        ((void*)0),
                        0);

        return request->property;
    }



    for (i = 0; i < formatCount; i++)
    {
        if (request->target == formats[i])
        {


            XChangeProperty(_glfw.x11.display,
                            request->requestor,
                            request->property,
                            request->target,
                            8,
                            PropModeReplace,
                            (unsigned char*) _glfw.x11.clipboardString,
                            strlen(_glfw.x11.clipboardString));

            return request->property;
        }
    }



    return None;
}
