#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  targets ;
typedef  int /*<<< orphan*/  formats ;
struct TYPE_6__ {scalar_t__ property; scalar_t__ target; int /*<<< orphan*/  requestor; } ;
typedef  TYPE_2__ XSelectionRequestEvent ;
struct TYPE_5__ {scalar_t__ const UTF8_STRING; scalar_t__ const COMPOUND_STRING; scalar_t__ TARGETS; scalar_t__ const MULTIPLE; scalar_t__ ATOM_PAIR; scalar_t__ SAVE_TARGETS; scalar_t__ NULL_; scalar_t__ clipboardString; int /*<<< orphan*/  display; } ;
struct TYPE_7__ {TYPE_1__ x11; } ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 scalar_t__ None ; 
 int /*<<< orphan*/  PropModeReplace ; 
 scalar_t__ XA_ATOM ; 
 scalar_t__ const XA_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 TYPE_4__ _glfw ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned char**) ; 
 unsigned long FUNC3 (scalar_t__) ; 

__attribute__((used)) static Atom FUNC4(const XSelectionRequestEvent* request)
{
    int i;
    const Atom formats[] = { _glfw.x11.UTF8_STRING,
                             _glfw.x11.COMPOUND_STRING,
                             XA_STRING };
    const int formatCount = sizeof(formats) / sizeof(formats[0]);

    if (request->property == None)
    {
        // The requester is a legacy client (ICCCM section 2.2)
        // We don't support legacy clients, so fail here
        return None;
    }

    if (request->target == _glfw.x11.TARGETS)
    {
        // The list of supported targets was requested

        const Atom targets[] = { _glfw.x11.TARGETS,
                                 _glfw.x11.MULTIPLE,
                                 _glfw.x11.UTF8_STRING,
                                 _glfw.x11.COMPOUND_STRING,
                                 XA_STRING };

        FUNC0(_glfw.x11.display,
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
        // Multiple conversions were requested

        Atom* targets;
        unsigned long i, count;

        count = FUNC2(request->requestor,
                                          request->property,
                                          _glfw.x11.ATOM_PAIR,
                                          (unsigned char**) &targets);

        for (i = 0;  i < count;  i += 2)
        {
            int j;

            for (j = 0;  j < formatCount;  j++)
            {
                if (targets[i] == formats[j])
                    break;
            }

            if (j < formatCount)
            {
                FUNC0(_glfw.x11.display,
                                request->requestor,
                                targets[i + 1],
                                targets[i],
                                8,
                                PropModeReplace,
                                (unsigned char*) _glfw.x11.clipboardString,
                                FUNC3(_glfw.x11.clipboardString));
            }
            else
                targets[i + 1] = None;
        }

        FUNC0(_glfw.x11.display,
                        request->requestor,
                        request->property,
                        _glfw.x11.ATOM_PAIR,
                        32,
                        PropModeReplace,
                        (unsigned char*) targets,
                        count);

        FUNC1(targets);

        return request->property;
    }

    if (request->target == _glfw.x11.SAVE_TARGETS)
    {
        // The request is a check whether we support SAVE_TARGETS
        // It should be handled as a no-op side effect target

        FUNC0(_glfw.x11.display,
                        request->requestor,
                        request->property,
                        _glfw.x11.NULL_,
                        32,
                        PropModeReplace,
                        NULL,
                        0);

        return request->property;
    }

    // Conversion to a data target was requested

    for (i = 0;  i < formatCount;  i++)
    {
        if (request->target == formats[i])
        {
            // The requested target is one we support

            FUNC0(_glfw.x11.display,
                            request->requestor,
                            request->property,
                            request->target,
                            8,
                            PropModeReplace,
                            (unsigned char*) _glfw.x11.clipboardString,
                            FUNC3(_glfw.x11.clipboardString));

            return request->property;
        }
    }

    // The requested target is not supported

    return None;
}