
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcd_state ;


 unsigned char* plat_mmap (int,int,int ,int ) ;
 int rom_alloc_size ;

__attribute__((used)) static unsigned char *PicoCartAlloc(int filesize, int is_sms)
{
  unsigned char *rom;

  if (is_sms) {

    int s = 0, tmp = filesize;
    while ((tmp >>= 1) != 0)
      s++;
    if (filesize > (1 << s))
      s++;
    rom_alloc_size = 1 << s;

    if (rom_alloc_size < 0x10000)
      rom_alloc_size = 0x10000;
  }
  else {


    if (filesize < sizeof(mcd_state))
      filesize = sizeof(mcd_state);


    rom_alloc_size = (filesize + 0x7ffff) & ~0x7ffff;
  }

  if (rom_alloc_size - filesize < 4)
    rom_alloc_size += 4;



  rom = plat_mmap(0x02000000, rom_alloc_size, 0, 0);
  return rom;
}
