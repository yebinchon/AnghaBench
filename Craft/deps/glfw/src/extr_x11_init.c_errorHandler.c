
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int error_code; } ;
typedef TYPE_2__ XErrorEvent ;
struct TYPE_5__ {int errorCode; } ;
struct TYPE_7__ {TYPE_1__ x11; } ;
typedef int Display ;


 TYPE_4__ _glfw ;

__attribute__((used)) static int errorHandler(Display *display, XErrorEvent* event)
{
    _glfw.x11.errorCode = event->error_code;
    return 0;
}
