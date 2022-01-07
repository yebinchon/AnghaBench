
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cdda_type; } ;
struct TYPE_8__ {int last; TYPE_1__* tracks; } ;
struct TYPE_9__ {int loaded; scalar_t__ status; scalar_t__ sectorSize; TYPE_3__ toc; } ;
struct TYPE_7__ {scalar_t__ datasource; } ;
struct TYPE_6__ {scalar_t__ fd; TYPE_2__ vf; } ;


 scalar_t__ CD_OPEN ;
 scalar_t__ CT_MP3 ;
 scalar_t__ NO_DISC ;
 TYPE_5__* Pico_mcd ;
 TYPE_4__ cdd ;
 int fclose (int *) ;
 int memset (TYPE_3__*,int,int) ;
 int ov_clear (TYPE_2__*) ;
 int pm_close (int *) ;

int cdd_unload(void)
{
  int was_loaded = cdd.loaded;

  if (cdd.loaded)
  {
    int i;


    if (cdd.toc.tracks[0].fd)
    {
      pm_close(cdd.toc.tracks[0].fd);
      cdd.toc.tracks[0].fd = ((void*)0);
    }

    for (i = 1; i < cdd.toc.last; i++)
    {
      if (cdd.toc.tracks[i].fd)
      {

        if (Pico_mcd->cdda_type == CT_MP3)
          fclose(cdd.toc.tracks[i].fd);
        else
          pm_close(cdd.toc.tracks[0].fd);


        if (cdd.toc.tracks[i+1].fd == cdd.toc.tracks[i].fd)
        {

          i = cdd.toc.last;
        }
      }
    }


    cdd.loaded = 0;

    if (cdd.status != CD_OPEN)
      cdd.status = NO_DISC;
  }


  memset(&cdd.toc, 0x00, sizeof(cdd.toc));


  cdd.sectorSize = 0;

  return was_loaded;
}
