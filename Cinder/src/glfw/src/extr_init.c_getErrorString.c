
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* getErrorString(int error)
{
    switch (error)
    {
        case 133:
            return "The GLFW library is not initialized";
        case 132:
            return "There is no current context";
        case 135:
            return "Invalid argument for enum parameter";
        case 134:
            return "Invalid value for parameter";
        case 130:
            return "Out of memory";
        case 137:
            return "The requested API is unavailable";
        case 128:
            return "The requested API version is unavailable";
        case 129:
            return "A platform-specific error occurred";
        case 136:
            return "The requested format is unavailable";
        case 131:
            return "The specified window has no context";
        default:
            return "ERROR: UNKNOWN GLFW ERROR";
    }
}
