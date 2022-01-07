
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int redBits; int greenBits; int blueBits; int alphaBits; int depthBits; int stencilBits; void* doublebuffer; } ;
struct TYPE_7__ {void* autoIconify; void* focused; void* decorated; void* visible; void* resizable; } ;
struct TYPE_6__ {int major; scalar_t__ minor; int api; } ;
struct TYPE_9__ {int refreshRate; TYPE_3__ framebuffer; TYPE_2__ window; TYPE_1__ context; } ;
struct TYPE_10__ {TYPE_4__ hints; } ;


 int GLFW_DONT_CARE ;
 int GLFW_OPENGL_API ;
 void* GL_TRUE ;
 int _GLFW_REQUIRE_INIT () ;
 TYPE_5__ _glfw ;
 int memset (TYPE_4__*,int ,int) ;

void glfwDefaultWindowHints(void)
{
    _GLFW_REQUIRE_INIT();

    memset(&_glfw.hints, 0, sizeof(_glfw.hints));


    _glfw.hints.context.api = GLFW_OPENGL_API;
    _glfw.hints.context.major = 1;
    _glfw.hints.context.minor = 0;


    _glfw.hints.window.resizable = GL_TRUE;
    _glfw.hints.window.visible = GL_TRUE;
    _glfw.hints.window.decorated = GL_TRUE;
    _glfw.hints.window.focused = GL_TRUE;
    _glfw.hints.window.autoIconify = GL_TRUE;



    _glfw.hints.framebuffer.redBits = 8;
    _glfw.hints.framebuffer.greenBits = 8;
    _glfw.hints.framebuffer.blueBits = 8;
    _glfw.hints.framebuffer.alphaBits = 8;
    _glfw.hints.framebuffer.depthBits = 24;
    _glfw.hints.framebuffer.stencilBits = 8;
    _glfw.hints.framebuffer.doublebuffer = GL_TRUE;


    _glfw.hints.refreshRate = GLFW_DONT_CARE;
}
