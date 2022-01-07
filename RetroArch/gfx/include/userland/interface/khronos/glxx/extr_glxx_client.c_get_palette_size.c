
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GLenum ;
 int UNREACHABLE () ;

__attribute__((used)) static uint32_t get_palette_size(GLenum internalformat)
{
   switch (internalformat)
   {
   case 135: return 16 * 3;
   case 133: return 16 * 4;
   case 137: return 16 * 2;
   case 134: return 16 * 2;
   case 136: return 16 * 2;
   case 130: return 256 * 3;
   case 128: return 256 * 4;
   case 132: return 256 * 2;
   case 129: return 256 * 2;
   case 131: return 256 * 2;
   default:
      UNREACHABLE();
      return 0;
   }
}
