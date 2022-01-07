
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inputs; int input_pads; int nb_inputs; } ;
typedef int AVFilterPad ;
typedef TYPE_1__ AVFilterContext ;


 int AVFilterLink ;
 int dstpad ;
 int ff_insert_pad (unsigned int,int *,int ,int *,int *,int *) ;
 int offsetof (int ,int ) ;

__attribute__((used)) static inline int ff_insert_inpad(AVFilterContext *f, unsigned index,
                                   AVFilterPad *p)
{
    return ff_insert_pad(index, &f->nb_inputs, offsetof(AVFilterLink, dstpad),
                  &f->input_pads, &f->inputs, p);
}
