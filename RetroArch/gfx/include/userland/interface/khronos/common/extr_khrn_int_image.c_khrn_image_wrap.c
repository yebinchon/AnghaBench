
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef void* uint16_t ;
typedef int int32_t ;
struct TYPE_3__ {void* storage; int * aux; int stride; void* height; void* width; int format; } ;
typedef TYPE_1__ KHRN_IMAGE_WRAP_T ;
typedef int KHRN_IMAGE_FORMAT_T ;



void khrn_image_wrap(KHRN_IMAGE_WRAP_T *wrap, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, void *storage)
{
   wrap->format = format;
   wrap->width = (uint16_t)width;
   wrap->height = (uint16_t)height;
   wrap->stride = stride;
   wrap->aux = ((void*)0);
   wrap->storage = storage;
}
