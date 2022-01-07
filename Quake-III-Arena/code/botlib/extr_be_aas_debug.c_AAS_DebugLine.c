
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int (* DebugLineShow ) (scalar_t__,int ,int ,int) ;scalar_t__ (* DebugLineCreate ) () ;} ;


 int MAX_DEBUGLINES ;
 TYPE_1__ botimport ;
 scalar_t__* debuglines ;
 scalar_t__* debuglinevisible ;
 int numdebuglines ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 scalar_t__ stub1 () ;
 int stub2 (scalar_t__,int ,int ,int) ;

void AAS_DebugLine(vec3_t start, vec3_t end, int color)
{
 int line;

 for (line = 0; line < MAX_DEBUGLINES; line++)
 {
  if (!debuglines[line])
  {
   debuglines[line] = botimport.DebugLineCreate();
   debuglinevisible[line] = qfalse;
   numdebuglines++;
  }
  if (!debuglinevisible[line])
  {
   botimport.DebugLineShow(debuglines[line], start, end, color);
   debuglinevisible[line] = qtrue;
   return;
  }
 }
}
