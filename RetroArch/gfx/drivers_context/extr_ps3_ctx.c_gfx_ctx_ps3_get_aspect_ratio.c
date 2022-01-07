
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int aspect; } ;
struct TYPE_5__ {TYPE_1__ displayMode; } ;
typedef TYPE_2__ CellVideoOutState ;




 int CELL_VIDEO_OUT_PRIMARY ;
 int cellVideoOutGetState (int ,int ,TYPE_2__*) ;

__attribute__((used)) static float gfx_ctx_ps3_get_aspect_ratio(void *data)
{
   CellVideoOutState videoState;

   cellVideoOutGetState(CELL_VIDEO_OUT_PRIMARY, 0, &videoState);

   switch (videoState.displayMode.aspect)
   {
      case 128:
         return 4.0f/3.0f;
      case 129:
         break;
   }

   return 16.0f/9.0f;
}
