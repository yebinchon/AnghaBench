
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outputs; int output_pads; int nb_outputs; } ;
typedef int AVFilterPad ;
typedef TYPE_1__ AVFilterContext ;


 int AVFilterLink ;
 int ff_insert_pad (unsigned int,int *,int ,int *,int *,int *) ;
 int offsetof (int ,int ) ;
 int srcpad ;

__attribute__((used)) static inline int ff_insert_outpad(AVFilterContext *f, unsigned index,
                                    AVFilterPad *p)
{
    return ff_insert_pad(index, &f->nb_outputs, offsetof(AVFilterLink, srcpad),
                  &f->output_pads, &f->outputs, p);
}
