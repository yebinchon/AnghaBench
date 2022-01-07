
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_off_t ;
typedef int voidpf ;
typedef scalar_t__ uLong ;
typedef int uInt ;



uLong zlibCompileFlags(void)
{
   uLong flags;

   flags = 0;
   switch ((int)(sizeof(uInt))) {
      case 2: break;
      case 4: flags += 1; break;
      case 8: flags += 2; break;
      default: flags += 3;
   }
   switch ((int)(sizeof(uLong))) {
      case 2: break;
      case 4: flags += 1 << 2; break;
      case 8: flags += 2 << 2; break;
      default: flags += 3 << 2;
   }
   switch ((int)(sizeof(voidpf))) {
      case 2: break;
      case 4: flags += 1 << 4; break;
      case 8: flags += 2 << 4; break;
      default: flags += 3 << 4;
   }
   switch ((int)(sizeof(z_off_t))) {
      case 2: break;
      case 4: flags += 1 << 6; break;
      case 8: flags += 2 << 6; break;
      default: flags += 3 << 6;
   }
   flags += 1L << 24;
   return flags;
}
