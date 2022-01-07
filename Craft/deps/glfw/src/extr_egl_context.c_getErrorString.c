
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EGLint ;
__attribute__((used)) static const char* getErrorString(EGLint error)
{
    switch (error)
    {
        case 128:
            return "Success";
        case 129:
            return "EGL is not or could not be initialized";
        case 142:
            return "EGL cannot access a requested resource";
        case 141:
            return "EGL failed to allocate resources for the requested operation";
        case 140:
            return "An unrecognized attribute or attribute value was passed in the attribute list";
        case 138:
            return "An EGLContext argument does not name a valid EGL rendering context";
        case 139:
            return "An EGLConfig argument does not name a valid EGL frame buffer configuration";
        case 137:
            return "The current surface of the calling thread is a window, pixel buffer or pixmap that is no longer valid";
        case 136:
            return "An EGLDisplay argument does not name a valid EGL display connection";
        case 131:
            return "An EGLSurface argument does not name a valid surface configured for GL rendering";
        case 135:
            return "Arguments are inconsistent";
        case 132:
            return "One or more argument values are invalid";
        case 134:
            return "A NativePixmapType argument does not refer to a valid native pixmap";
        case 133:
            return "A NativeWindowType argument does not refer to a valid native window";
        case 130:
            return "The application must destroy all contexts and reinitialise";
    }

    return "UNKNOWN EGL ERROR";
}
