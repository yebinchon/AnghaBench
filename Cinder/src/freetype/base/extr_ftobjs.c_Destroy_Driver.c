
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int memory; } ;
struct TYPE_6__ {TYPE_1__ root; int faces_list; } ;
typedef int FT_List_Destructor ;
typedef TYPE_2__* FT_Driver ;


 int FT_List_Finalize (int *,int ,int ,TYPE_2__*) ;
 scalar_t__ destroy_face ;

__attribute__((used)) static void
  Destroy_Driver( FT_Driver driver )
  {
    FT_List_Finalize( &driver->faces_list,
                      (FT_List_Destructor)destroy_face,
                      driver->root.memory,
                      driver );
  }
