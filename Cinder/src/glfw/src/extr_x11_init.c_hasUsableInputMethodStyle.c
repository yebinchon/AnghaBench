
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int count_styles; int* supported_styles; } ;
typedef TYPE_2__ XIMStyles ;
struct TYPE_6__ {int im; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int XFree (TYPE_2__*) ;
 int * XGetIMValues (int ,int ,TYPE_2__**,int *) ;
 int XIMPreeditNothing ;
 int XIMStatusNothing ;
 int XNQueryInputStyle ;
 TYPE_3__ _glfw ;

__attribute__((used)) static GLFWbool hasUsableInputMethodStyle(void)
{
    unsigned int i;
    GLFWbool found = GLFW_FALSE;
    XIMStyles* styles = ((void*)0);

    if (XGetIMValues(_glfw.x11.im, XNQueryInputStyle, &styles, ((void*)0)) != ((void*)0))
        return GLFW_FALSE;

    for (i = 0; i < styles->count_styles; i++)
    {
        if (styles->supported_styles[i] == (XIMPreeditNothing | XIMStatusNothing))
        {
            found = GLFW_TRUE;
            break;
        }
    }

    XFree(styles);
    return found;
}
