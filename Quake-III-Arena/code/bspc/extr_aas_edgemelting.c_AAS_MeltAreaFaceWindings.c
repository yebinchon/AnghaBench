
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l_next; } ;
typedef TYPE_1__ tmp_area_t ;
struct TYPE_5__ {TYPE_1__* areas; } ;


 scalar_t__ AAS_MeltFaceWindingsOfArea (TYPE_1__*) ;
 int Log_Write (char*,...) ;
 int qprintf (char*,...) ;
 TYPE_2__ tmpaasworld ;

void AAS_MeltAreaFaceWindings(void)
{
 tmp_area_t *tmparea;
 int num_windingsplits = 0;

 Log_Write("AAS_MeltAreaFaceWindings\r\n");
 qprintf("%6d edges melted", num_windingsplits);

 for (tmparea = tmpaasworld.areas; tmparea; tmparea = tmparea->l_next)
 {
  num_windingsplits += AAS_MeltFaceWindingsOfArea(tmparea);
  qprintf("\r%6d", num_windingsplits);
 }
 qprintf("\n");
 Log_Write("%6d edges melted\r\n", num_windingsplits);
}
