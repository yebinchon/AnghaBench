
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* getErrorString(int error)
{
    switch (error)
    {
        case 132:
            return "The GLFW library is not initialized";
        case 131:
            return "There is no current context";
        case 134:
            return "Invalid argument for enum parameter";
        case 133:
            return "Invalid value for parameter";
        case 130:
            return "Out of memory";
        case 136:
            return "The requested client API is unavailable";
        case 128:
            return "The requested client API version is unavailable";
        case 129:
            return "A platform-specific error occurred";
        case 135:
            return "The requested format is unavailable";
    }

    return "ERROR: UNKNOWN ERROR TOKEN PASSED TO glfwErrorString";
}
