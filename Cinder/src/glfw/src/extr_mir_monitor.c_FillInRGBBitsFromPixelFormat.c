
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int redBits; int greenBits; int blueBits; } ;
typedef int MirPixelFormat ;
typedef TYPE_1__ GLFWvidmode ;
void FillInRGBBitsFromPixelFormat(GLFWvidmode* mode, const MirPixelFormat pf)
{
    switch (pf)
    {
      case 133:
          mode->redBits = 5;
          mode->greenBits = 6;
          mode->blueBits = 5;
          break;
      case 130:
          mode->redBits = 5;
          mode->greenBits = 5;
          mode->blueBits = 5;
          break;
      case 131:
          mode->redBits = 4;
          mode->greenBits = 4;
          mode->blueBits = 4;
          break;
      case 136:
      case 129:
      case 135:
      case 128:
      case 134:
      case 132:
      default:
          mode->redBits = 8;
          mode->greenBits = 8;
          mode->blueBits = 8;
          break;
    }
}
