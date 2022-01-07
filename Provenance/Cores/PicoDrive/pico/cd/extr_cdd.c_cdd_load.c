
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int last; int end; TYPE_1__* tracks; } ;
struct TYPE_6__ {int sectorSize; int loaded; int status; TYPE_2__ toc; } ;
struct TYPE_4__ {int start; int end; int fd; } ;


 int CT_BIN ;
 int EL_ANOMALY ;
 int EL_STATUS ;
 int NO_DISC ;
 TYPE_3__ cdd ;
 int cdd_unload () ;
 int elprintf (int,char*) ;
 int load_cd_image (char const*,int*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int pm_read (char*,int,int ) ;
 int * strstr (char*,char*) ;
 int* toc_dungeon ;
 int* toc_ffight ;
 int* toc_ffightj ;
 int* toc_lunar ;
 int* toc_shadow ;
 int* toc_snatcher ;

int cdd_load(const char *filename, int type)
{
  char header[0x210];
  int ret;


  cdd_unload();


  ret = load_cd_image(filename, &type);
  if (ret != 0)
    return ret;


  pm_read(header, 0x10, cdd.toc.tracks[0].fd);


  if (memcmp("SEGADISCSYSTEM", header, 14))
  {

    pm_read(header, 0x10, cdd.toc.tracks[0].fd);


    if (memcmp("SEGADISCSYSTEM", header, 14))
    {
      elprintf(EL_STATUS|EL_ANOMALY, "cd: bad cd image?");

    }


    cdd.sectorSize = 2352;
  }
  else
  {

    cdd.sectorSize = 2048;
  }

  ret = (type == CT_BIN) ? 2352 : 2048;
  if (ret != cdd.sectorSize)
    elprintf(EL_STATUS|EL_ANOMALY, "cd: type detection mismatch");


  pm_read(header + 0x10, 0x200, cdd.toc.tracks[0].fd);


  if (cdd.toc.last == 1)
  {

    if (strstr(header + 0x180,"T-95035") != ((void*)0))
    {

      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_snatcher[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 21);
    }
    else if (strstr(header + 0x180,"T-127015") != ((void*)0))
    {

      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_lunar[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 52);
    }
    else if (strstr(header + 0x180,"T-113045") != ((void*)0))
    {

      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_shadow[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 15);
    }
    else if (strstr(header + 0x180,"T-143025") != ((void*)0))
    {

      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_dungeon[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 13);
    }
    else if (strstr(header + 0x180,"MK-4410") != ((void*)0))
    {

      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_ffight[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 26);
    }
    else if (strstr(header + 0x180,"G-6013") != ((void*)0))
    {

      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_ffightj[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 29);
    }
  }


  cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;


  cdd.loaded = 1;


  cdd.status = NO_DISC;

  return 0;
}
