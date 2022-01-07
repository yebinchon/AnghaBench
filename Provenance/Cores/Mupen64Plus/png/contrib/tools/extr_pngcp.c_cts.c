
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
cts(int ct)
{
   switch (ct)
   {
      case 130: return "P";
      case 132: return "G";
      case 131: return "GA";
      case 129: return "RGB";
      case 128: return "RGBA";
      default: return "INVALID";
   }
}
