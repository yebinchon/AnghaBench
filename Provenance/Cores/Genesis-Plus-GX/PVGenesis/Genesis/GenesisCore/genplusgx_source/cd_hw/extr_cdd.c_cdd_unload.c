
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int last; TYPE_1__* tracks; } ;
struct TYPE_8__ {scalar_t__ sectorSize; TYPE_3__ toc; scalar_t__ loaded; } ;
struct TYPE_6__ {scalar_t__ datasource; } ;
struct TYPE_5__ {scalar_t__ fd; TYPE_2__ vf; } ;


 TYPE_4__ cdd ;
 int fclose (scalar_t__) ;
 int memset (TYPE_3__*,int,int) ;
 int ov_clear (TYPE_2__*) ;

void cdd_unload(void)
{
  if (cdd.loaded)
  {
    int i;


    for (i=0; i<cdd.toc.last; i++)
    {
      {
        if (cdd.toc.tracks[i].fd)
        {

          fclose(cdd.toc.tracks[i].fd);


          if (cdd.toc.tracks[i+1].fd == cdd.toc.tracks[i].fd)
          {

            i = cdd.toc.last;
          }
        }
      }
    }


    cdd.loaded = 0;
  }


  memset(&cdd.toc, 0x00, sizeof(cdd.toc));


  cdd.sectorSize = 0;
}
