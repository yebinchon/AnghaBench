
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_1__ ccv_size_t ;



__attribute__((used)) inline static int ccv_size_is_zero(ccv_size_t size)
{
 return size.width == 0 && size.height == 0;
}
