
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XEvent ;
struct TYPE_3__ {int * clipboardString; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 TYPE_2__ _glfw ;
 int free (int *) ;

__attribute__((used)) static void handleSelectionClear(XEvent* event)
{
    free(_glfw.x11.clipboardString);
    _glfw.x11.clipboardString = ((void*)0);
}
