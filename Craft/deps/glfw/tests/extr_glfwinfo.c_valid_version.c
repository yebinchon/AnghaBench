
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLboolean ;


 int GLFW_VERSION_MAJOR ;
 int GLFW_VERSION_MINOR ;
 int GLFW_VERSION_REVISION ;
 int GL_FALSE ;
 int GL_TRUE ;
 int glfwGetVersion (int*,int*,int*) ;
 int printf (char*) ;

__attribute__((used)) static GLboolean valid_version(void)
{
    int major, minor, revision;
    glfwGetVersion(&major, &minor, &revision);

    if (major != GLFW_VERSION_MAJOR)
    {
        printf("*** ERROR: GLFW major version mismatch! ***\n");
        return GL_FALSE;
    }

    if (minor != GLFW_VERSION_MINOR || revision != GLFW_VERSION_REVISION)
        printf("*** WARNING: GLFW version mismatch! ***\n");

    return GL_TRUE;
}
