
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* scriptstack; int filename; } ;
struct TYPE_3__ {int line; } ;


 int MAX_SOURCEFILES ;
 int qfalse ;
 int qtrue ;
 TYPE_2__** sourceFiles ;
 int strcpy (char*,int ) ;

int PC_SourceFileAndLine(int handle, char *filename, int *line)
{
 if (handle < 1 || handle >= MAX_SOURCEFILES)
  return qfalse;
 if (!sourceFiles[handle])
  return qfalse;

 strcpy(filename, sourceFiles[handle]->filename);
 if (sourceFiles[handle]->scriptstack)
  *line = sourceFiles[handle]->scriptstack->line;
 else
  *line = 0;
 return qtrue;
}
