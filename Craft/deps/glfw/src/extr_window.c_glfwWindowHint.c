
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int api; int major; int minor; int robustness; int profile; int release; void* debug; void* forward; } ;
struct TYPE_7__ {void* visible; void* floating; void* autoIconify; void* focused; void* decorated; void* resizable; } ;
struct TYPE_6__ {int redBits; int greenBits; int blueBits; int alphaBits; int depthBits; int stencilBits; int accumRedBits; int accumGreenBits; int accumBlueBits; int accumAlphaBits; int auxBuffers; int samples; void* sRGB; void* doublebuffer; void* stereo; } ;
struct TYPE_9__ {int refreshRate; TYPE_3__ context; TYPE_2__ window; TYPE_1__ framebuffer; } ;
struct TYPE_10__ {TYPE_4__ hints; } ;
 int GLFW_INVALID_ENUM ;
 void* GL_FALSE ;
 void* GL_TRUE ;
 int _GLFW_REQUIRE_INIT () ;
 TYPE_5__ _glfw ;
 int _glfwInputError (int ,char*) ;

void glfwWindowHint(int target, int hint)
{
    _GLFW_REQUIRE_INIT();

    switch (target)
    {
        case 135:
            _glfw.hints.framebuffer.redBits = hint;
            break;
        case 139:
            _glfw.hints.framebuffer.greenBits = hint;
            break;
        case 150:
            _glfw.hints.framebuffer.blueBits = hint;
            break;
        case 153:
            _glfw.hints.framebuffer.alphaBits = hint;
            break;
        case 143:
            _glfw.hints.framebuffer.depthBits = hint;
            break;
        case 130:
            _glfw.hints.framebuffer.stencilBits = hint;
            break;
        case 154:
            _glfw.hints.framebuffer.accumRedBits = hint;
            break;
        case 155:
            _glfw.hints.framebuffer.accumGreenBits = hint;
            break;
        case 156:
            _glfw.hints.framebuffer.accumBlueBits = hint;
            break;
        case 157:
            _glfw.hints.framebuffer.accumAlphaBits = hint;
            break;
        case 151:
            _glfw.hints.framebuffer.auxBuffers = hint;
            break;
        case 129:
            _glfw.hints.framebuffer.stereo = hint ? GL_TRUE : GL_FALSE;
            break;
        case 142:
            _glfw.hints.framebuffer.doublebuffer = hint ? GL_TRUE : GL_FALSE;
            break;
        case 132:
            _glfw.hints.framebuffer.samples = hint;
            break;
        case 131:
            _glfw.hints.framebuffer.sRGB = hint ? GL_TRUE : GL_FALSE;
            break;
        case 133:
            _glfw.hints.window.resizable = hint ? GL_TRUE : GL_FALSE;
            break;
        case 144:
            _glfw.hints.window.decorated = hint ? GL_TRUE : GL_FALSE;
            break;
        case 140:
            _glfw.hints.window.focused = hint ? GL_TRUE : GL_FALSE;
            break;
        case 152:
            _glfw.hints.window.autoIconify = hint ? GL_TRUE : GL_FALSE;
            break;
        case 141:
            _glfw.hints.window.floating = hint ? GL_TRUE : GL_FALSE;
            break;
        case 128:
            _glfw.hints.window.visible = hint ? GL_TRUE : GL_FALSE;
            break;
        case 149:
            _glfw.hints.context.api = hint;
            break;
        case 146:
            _glfw.hints.context.major = hint;
            break;
        case 145:
            _glfw.hints.context.minor = hint;
            break;
        case 147:
            _glfw.hints.context.robustness = hint;
            break;
        case 137:
            _glfw.hints.context.forward = hint ? GL_TRUE : GL_FALSE;
            break;
        case 138:
            _glfw.hints.context.debug = hint ? GL_TRUE : GL_FALSE;
            break;
        case 136:
            _glfw.hints.context.profile = hint;
            break;
        case 148:
            _glfw.hints.context.release = hint;
            break;
        case 134:
            _glfw.hints.refreshRate = hint;
            break;
        default:
            _glfwInputError(GLFW_INVALID_ENUM, "Invalid window hint");
            break;
    }
}
