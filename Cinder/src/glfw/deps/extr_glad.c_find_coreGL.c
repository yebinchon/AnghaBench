
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; int minor; } ;


 int GLAD_GL_VERSION_1_0 ;
 int GLAD_GL_VERSION_1_1 ;
 int GLAD_GL_VERSION_1_2 ;
 int GLAD_GL_VERSION_1_3 ;
 int GLAD_GL_VERSION_1_4 ;
 int GLAD_GL_VERSION_1_5 ;
 int GLAD_GL_VERSION_2_0 ;
 int GLAD_GL_VERSION_2_1 ;
 int GLAD_GL_VERSION_3_0 ;
 int GLAD_GL_VERSION_3_1 ;
 int GLAD_GL_VERSION_3_2 ;
 TYPE_1__ GLVersion ;
 int GL_VERSION ;
 scalar_t__ glGetString (int ) ;
 int sscanf (char const*,char*,int*,int*) ;
 int sscanf_s (char const*,char*,int*,int*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t const) ;

__attribute__((used)) static void find_coreGL(void) {





    int i, major, minor;

    const char* version;
    const char* prefixes[] = {
        "OpenGL ES-CM ",
        "OpenGL ES-CL ",
        "OpenGL ES ",
        ((void*)0)
    };

    version = (const char*) glGetString(GL_VERSION);
    if (!version) return;

    for (i = 0; prefixes[i]; i++) {
        const size_t length = strlen(prefixes[i]);
        if (strncmp(version, prefixes[i], length) == 0) {
            version += length;
            break;
        }
    }





    sscanf(version, "%d.%d", &major, &minor);


    GLVersion.major = major; GLVersion.minor = minor;
 GLAD_GL_VERSION_1_0 = (major == 1 && minor >= 0) || major > 1;
 GLAD_GL_VERSION_1_1 = (major == 1 && minor >= 1) || major > 1;
 GLAD_GL_VERSION_1_2 = (major == 1 && minor >= 2) || major > 1;
 GLAD_GL_VERSION_1_3 = (major == 1 && minor >= 3) || major > 1;
 GLAD_GL_VERSION_1_4 = (major == 1 && minor >= 4) || major > 1;
 GLAD_GL_VERSION_1_5 = (major == 1 && minor >= 5) || major > 1;
 GLAD_GL_VERSION_2_0 = (major == 2 && minor >= 0) || major > 2;
 GLAD_GL_VERSION_2_1 = (major == 2 && minor >= 1) || major > 2;
 GLAD_GL_VERSION_3_0 = (major == 3 && minor >= 0) || major > 3;
 GLAD_GL_VERSION_3_1 = (major == 3 && minor >= 1) || major > 3;
 GLAD_GL_VERSION_3_2 = (major == 3 && minor >= 2) || major > 3;
}
