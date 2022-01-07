
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
typedef TYPE_1__ ccv_size_t ;



__attribute__((used)) inline static ccv_size_t ccv_size(int width, int height)
{
 ccv_size_t size;
 size.width = width;
 size.height = height;
 return size;
}
