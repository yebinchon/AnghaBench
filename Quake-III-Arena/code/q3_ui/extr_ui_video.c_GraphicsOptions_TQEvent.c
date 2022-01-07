
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int curvalue; } ;
struct TYPE_4__ {TYPE_1__ tq; } ;


 int QM_ACTIVATED ;
 TYPE_2__ s_graphicsoptions ;

__attribute__((used)) static void GraphicsOptions_TQEvent( void *ptr, int event ) {
 if( event != QM_ACTIVATED ) {
   return;
 }
 s_graphicsoptions.tq.curvalue = (int)(s_graphicsoptions.tq.curvalue + 0.5);
}
