
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef uintptr_t VASurfaceID ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static inline VASurfaceID ff_vaapi_get_surface_id(AVFrame *pic)
{
    return (uintptr_t)pic->data[3];
}
