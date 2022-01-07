
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int redBits; int greenBits; int blueBits; int width; int height; int refreshRate; } ;
typedef TYPE_1__ GLFWvidmode ;



__attribute__((used)) static int compareVideoModes(const void* firstPtr, const void* secondPtr)
{
    int firstBPP, secondBPP, firstSize, secondSize;
    const GLFWvidmode* first = firstPtr;
    const GLFWvidmode* second = secondPtr;


    firstBPP = first->redBits + first->greenBits + first->blueBits;
    secondBPP = second->redBits + second->greenBits + second->blueBits;
    if (firstBPP != secondBPP)
        return firstBPP - secondBPP;


    firstSize = first->width * first->height;
    secondSize = second->width * second->height;
    if (firstSize != secondSize)
        return firstSize - secondSize;


    return first->refreshRate - second->refreshRate;
}
