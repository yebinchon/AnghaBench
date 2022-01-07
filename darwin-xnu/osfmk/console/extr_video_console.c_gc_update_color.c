
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int (* update_color ) (int,int ) ;} ;


 int COLOR_CODE_SET (int ,int,int ) ;
 int assert (int (*) (int,int )) ;
 int gc_color_code ;
 TYPE_1__ gc_ops ;
 int stub1 (int,int ) ;

__attribute__((used)) static void
gc_update_color(int color, boolean_t fore)
{
 assert(gc_ops.update_color);

 gc_color_code = COLOR_CODE_SET(gc_color_code, color, fore);
 gc_ops.update_color(color, fore);
}
