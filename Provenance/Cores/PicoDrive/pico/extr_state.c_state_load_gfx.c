
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dirty_pal; } ;
struct TYPE_7__ {TYPE_2__ video; TYPE_2__ vsram; TYPE_2__ cram; TYPE_2__ vram; } ;
struct TYPE_5__ {TYPE_2__ pal; TYPE_2__ dram; } ;


 int CHECKED_READ (int,...) ;
 int CHECKED_READ_BUFF (TYPE_2__) ;




 char CHUNK_FM ;
 char CHUNK_MISC_CD ;



 int PAHW_32X ;
 int PAHW_MCD ;
 TYPE_3__ Pico ;
 TYPE_2__ Pico32x ;
 TYPE_1__* Pico32xMem ;
 int PicoAHW ;
 int R_ERROR_RETURN (char*) ;
 int SEEK_CUR ;
 int areaEof (void*) ;
 int areaSeek (void*,int,int ) ;
 scalar_t__ g_read_offs ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int state_load_gfx(void *file)
{
  int ver, len, found = 0, to_find = 4;
  char buff[8];

  if (PicoAHW & PAHW_32X)
    to_find += 2;

  g_read_offs = 0;
  CHECKED_READ(8, buff);
  if (strncmp((char *)buff, "PicoSMCD", 8) && strncmp((char *)buff, "PicoSEXT", 8))
    R_ERROR_RETURN("bad header");
  CHECKED_READ(4, &ver);

  while (!areaEof(file) && found < to_find)
  {
    CHECKED_READ(1, buff);
    CHECKED_READ(4, &len);
    if (len < 0 || len > 1024*512) R_ERROR_RETURN("bad length");
    if (buff[0] > CHUNK_FM && buff[0] <= CHUNK_MISC_CD && !(PicoAHW & PAHW_MCD))
      R_ERROR_RETURN("cd chunk in non CD state?");

    switch (buff[0])
    {
      case 129: CHECKED_READ_BUFF(Pico.vram); found++; break;
      case 132: CHECKED_READ_BUFF(Pico.cram); found++; break;
      case 128: CHECKED_READ_BUFF(Pico.vsram); found++; break;
      case 130: CHECKED_READ_BUFF(Pico.video); found++; break;


      case 131:
        if (Pico32xMem != ((void*)0))
          CHECKED_READ_BUFF(Pico32xMem->dram);
        break;

      case 134:
        if (Pico32xMem != ((void*)0))
          CHECKED_READ_BUFF(Pico32xMem->pal);
        Pico32x.dirty_pal = 1;
        break;

      case 133:
        CHECKED_READ_BUFF(Pico32x);
        break;

      default:
        areaSeek(file, len, SEEK_CUR);
        break;
    }
  }

out:
readend:
  return 0;
}
