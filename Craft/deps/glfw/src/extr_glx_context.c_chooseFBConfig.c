
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int redBits; int greenBits; int blueBits; int alphaBits; int depthBits; int stencilBits; int accumRedBits; int accumGreenBits; int accumBlueBits; int accumAlphaBits; int auxBuffers; int samples; int sRGB; int glx; void* doublebuffer; void* stereo; } ;
typedef TYPE_3__ _GLFWfbconfig ;
struct TYPE_13__ {scalar_t__ EXT_framebuffer_sRGB; scalar_t__ ARB_framebuffer_sRGB; scalar_t__ ARB_multisample; } ;
struct TYPE_12__ {int screen; int display; } ;
struct TYPE_11__ {TYPE_2__ glx; TYPE_1__ x11; } ;
typedef void* GLboolean ;
typedef int GLXFBConfig ;


 int GLFW_API_UNAVAILABLE ;
 int GLX_ACCUM_ALPHA_SIZE ;
 int GLX_ACCUM_BLUE_SIZE ;
 int GLX_ACCUM_GREEN_SIZE ;
 int GLX_ACCUM_RED_SIZE ;
 int GLX_ALPHA_SIZE ;
 int GLX_AUX_BUFFERS ;
 int GLX_BLUE_SIZE ;
 int GLX_DEPTH_SIZE ;
 int GLX_DOUBLEBUFFER ;
 int GLX_DRAWABLE_TYPE ;
 int GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB ;
 int GLX_GREEN_SIZE ;
 int GLX_RED_SIZE ;
 int GLX_RENDER_TYPE ;
 int GLX_RGBA_BIT ;
 int GLX_SAMPLES ;
 int GLX_STENCIL_SIZE ;
 int GLX_STEREO ;
 int GLX_VENDOR ;
 int GLX_VISUAL_ID ;
 int GLX_WINDOW_BIT ;
 void* GL_FALSE ;
 void* GL_TRUE ;
 int XFree (int *) ;
 TYPE_10__ _glfw ;
 TYPE_3__* _glfwChooseFBConfig (TYPE_3__ const*,TYPE_3__*,int) ;
 int _glfwInputError (int ,char*) ;
 char* _glfw_glXGetClientString (int ,int ) ;
 int * _glfw_glXGetFBConfigs (int ,int ,int*) ;
 TYPE_3__* calloc (int,int) ;
 int free (TYPE_3__*) ;
 int getFBConfigAttrib (int const,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static GLboolean chooseFBConfig(const _GLFWfbconfig* desired, GLXFBConfig* result)
{
    GLXFBConfig* nativeConfigs;
    _GLFWfbconfig* usableConfigs;
    const _GLFWfbconfig* closest;
    int i, nativeCount, usableCount;
    const char* vendor;
    GLboolean trustWindowBit = GL_TRUE;



    vendor = _glfw_glXGetClientString(_glfw.x11.display, GLX_VENDOR);
    if (strcmp(vendor, "Chromium") == 0)
        trustWindowBit = GL_FALSE;

    nativeConfigs = _glfw_glXGetFBConfigs(_glfw.x11.display, _glfw.x11.screen,
                                          &nativeCount);
    if (!nativeCount)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE, "GLX: No GLXFBConfigs returned");
        return GL_FALSE;
    }

    usableConfigs = calloc(nativeCount, sizeof(_GLFWfbconfig));
    usableCount = 0;

    for (i = 0; i < nativeCount; i++)
    {
        const GLXFBConfig n = nativeConfigs[i];
        _GLFWfbconfig* u = usableConfigs + usableCount;


        if (!getFBConfigAttrib(n, GLX_VISUAL_ID))
            continue;


        if (!(getFBConfigAttrib(n, GLX_RENDER_TYPE) & GLX_RGBA_BIT))
            continue;


        if (!(getFBConfigAttrib(n, GLX_DRAWABLE_TYPE) & GLX_WINDOW_BIT))
        {
            if (trustWindowBit)
                continue;
        }

        u->redBits = getFBConfigAttrib(n, GLX_RED_SIZE);
        u->greenBits = getFBConfigAttrib(n, GLX_GREEN_SIZE);
        u->blueBits = getFBConfigAttrib(n, GLX_BLUE_SIZE);

        u->alphaBits = getFBConfigAttrib(n, GLX_ALPHA_SIZE);
        u->depthBits = getFBConfigAttrib(n, GLX_DEPTH_SIZE);
        u->stencilBits = getFBConfigAttrib(n, GLX_STENCIL_SIZE);

        u->accumRedBits = getFBConfigAttrib(n, GLX_ACCUM_RED_SIZE);
        u->accumGreenBits = getFBConfigAttrib(n, GLX_ACCUM_GREEN_SIZE);
        u->accumBlueBits = getFBConfigAttrib(n, GLX_ACCUM_BLUE_SIZE);
        u->accumAlphaBits = getFBConfigAttrib(n, GLX_ACCUM_ALPHA_SIZE);

        u->auxBuffers = getFBConfigAttrib(n, GLX_AUX_BUFFERS);

        if (getFBConfigAttrib(n, GLX_STEREO))
            u->stereo = GL_TRUE;
        if (getFBConfigAttrib(n, GLX_DOUBLEBUFFER))
            u->doublebuffer = GL_TRUE;

        if (_glfw.glx.ARB_multisample)
            u->samples = getFBConfigAttrib(n, GLX_SAMPLES);

        if (_glfw.glx.ARB_framebuffer_sRGB || _glfw.glx.EXT_framebuffer_sRGB)
            u->sRGB = getFBConfigAttrib(n, GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB);

        u->glx = n;
        usableCount++;
    }

    closest = _glfwChooseFBConfig(desired, usableConfigs, usableCount);
    if (closest)
        *result = closest->glx;

    XFree(nativeConfigs);
    free(usableConfigs);

    return closest ? GL_TRUE : GL_FALSE;
}
