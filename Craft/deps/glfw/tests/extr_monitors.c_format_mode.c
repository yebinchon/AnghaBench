
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int width; int height; int redBits; int greenBits; int blueBits; int refreshRate; } ;
typedef TYPE_1__ GLFWvidmode ;


 int sprintf (char*,char*,int,int,int,int,int,int,int) ;

__attribute__((used)) static const char* format_mode(const GLFWvidmode* mode)
{
    static char buffer[512];

    sprintf(buffer,
            "%i x %i x %i (%i %i %i) %i Hz",
            mode->width, mode->height,
            mode->redBits + mode->greenBits + mode->blueBits,
            mode->redBits, mode->greenBits, mode->blueBits,
            mode->refreshRate);

    buffer[sizeof(buffer) - 1] = '\0';
    return buffer;
}
