
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* finalize ) (int *) ;} ;
typedef int GObject ;


 TYPE_1__* G_OBJECT_CLASS (int ) ;
 int parent_class ;
 int stub1 (int *) ;

__attribute__((used)) static void
custom_cell_renderer_button_finalize (GObject *object)
{







    (* G_OBJECT_CLASS (parent_class)->finalize) (object);
}
