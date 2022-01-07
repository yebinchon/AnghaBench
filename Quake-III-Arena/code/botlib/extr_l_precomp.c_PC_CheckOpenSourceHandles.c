
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* Print ) (int ,char*,int ) ;} ;
struct TYPE_5__ {TYPE_1__* scriptstack; } ;
struct TYPE_4__ {int filename; } ;


 int MAX_SOURCEFILES ;
 int PRT_ERROR ;
 TYPE_3__ botimport ;
 TYPE_2__** sourceFiles ;
 int stub1 (int ,char*,int ) ;

void PC_CheckOpenSourceHandles(void)
{
 int i;

 for (i = 1; i < MAX_SOURCEFILES; i++)
 {
  if (sourceFiles[i])
  {



  }
 }
}
