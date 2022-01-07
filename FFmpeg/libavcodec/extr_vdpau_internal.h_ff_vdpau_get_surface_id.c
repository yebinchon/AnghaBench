
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static inline uintptr_t ff_vdpau_get_surface_id(AVFrame *pic)
{
    return (uintptr_t)pic->data[3];
}
