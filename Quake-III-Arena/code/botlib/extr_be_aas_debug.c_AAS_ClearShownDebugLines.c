
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* DebugLineDelete ) (scalar_t__) ;} ;


 int MAX_DEBUGLINES ;
 TYPE_1__ botimport ;
 scalar_t__* debuglines ;
 int * debuglinevisible ;
 int qfalse ;
 int stub1 (scalar_t__) ;

void AAS_ClearShownDebugLines(void)
{
 int i;


 for (i = 0; i < MAX_DEBUGLINES; i++)
 {
  if (debuglines[i])
  {

   botimport.DebugLineDelete(debuglines[i]);
   debuglines[i] = 0;
   debuglinevisible[i] = qfalse;
  }
 }
}
