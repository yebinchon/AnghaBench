
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int ANTIC_margin ;
 int * ANTIC_xe_ptr ;
 int MEMORY_CopyFromMem (int,int *,int) ;
 int MEMORY_dCopyFromMem (int,int *,int) ;
 void* MEMORY_dGetByte (int ) ;
 int * antic_memory ;
 int* chars_read ;
 size_t md ;
 int memcpy (int *,int *,int) ;
 int screenaddr ;

__attribute__((used)) static void antic_load(void)
{
 UWORD new_screenaddr = screenaddr + chars_read[md];
 if ((screenaddr ^ new_screenaddr) & 0xf000) {
  int bytes = (-screenaddr) & 0xfff;
  if (ANTIC_xe_ptr != ((void*)0) && screenaddr < 0x8000 && screenaddr >= 0x4000) {
   memcpy(antic_memory + ANTIC_margin, ANTIC_xe_ptr + (screenaddr - 0x4000), bytes);
   if (new_screenaddr & 0xfff)
    memcpy(antic_memory + ANTIC_margin + bytes, ANTIC_xe_ptr + (screenaddr + bytes - 0x5000), new_screenaddr & 0xfff);
  }
  else if ((screenaddr & 0xf000) == 0xd000) {
   MEMORY_CopyFromMem(screenaddr, antic_memory + ANTIC_margin, bytes);
   if (new_screenaddr & 0xfff)
    MEMORY_CopyFromMem((UWORD) (screenaddr + bytes - 0x1000), antic_memory + ANTIC_margin + bytes, new_screenaddr & 0xfff);
  }
  else {
   MEMORY_dCopyFromMem(screenaddr, antic_memory + ANTIC_margin, bytes);
   if (new_screenaddr & 0xfff)
    MEMORY_dCopyFromMem(screenaddr + bytes - 0x1000, antic_memory + ANTIC_margin + bytes, new_screenaddr & 0xfff);
  }
  screenaddr = new_screenaddr - 0x1000;
 }
 else {
  if (ANTIC_xe_ptr != ((void*)0) && screenaddr < 0x8000 && screenaddr >= 0x4000)
   memcpy(antic_memory + ANTIC_margin, ANTIC_xe_ptr + (screenaddr - 0x4000), chars_read[md]);
  else if ((screenaddr & 0xf000) == 0xd000)
   MEMORY_CopyFromMem(screenaddr, antic_memory + ANTIC_margin, chars_read[md]);
  else
   MEMORY_dCopyFromMem(screenaddr, antic_memory + ANTIC_margin, chars_read[md]);
  screenaddr = new_screenaddr;
 }

}
