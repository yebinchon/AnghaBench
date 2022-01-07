
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
strcode(int code)
{
   switch (code)
   {
      case 132: return "warning";
      case 133: return "libpng";
      case 128: return "zlib";
      case 134: return "invalid";
      case 131: return "read";
      case 129: return "write";
      case 130: return "unexpected";
      default: return "INVALID";
   }
}
