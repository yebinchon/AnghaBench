#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stbi_uc ;
typedef  int /*<<< orphan*/  stbi__uint16 ;
struct TYPE_3__ {int bits_per_channel; } ;
typedef  TYPE_1__ stbi__result_info ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int) ; 
 scalar_t__ stbi__vertically_flip_on_load ; 

__attribute__((used)) static stbi__uint16 *FUNC4(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi__result_info ri;
   void *result = FUNC2(s, x, y, comp, req_comp, &ri, 16);

   if (result == NULL)
      return NULL;

   if (ri.bits_per_channel != 16) {
      FUNC0(ri.bits_per_channel == 8);
      result = FUNC1((stbi_uc *) result, *x, *y, req_comp == 0 ? *comp : req_comp);
      ri.bits_per_channel = 16;
   }

   // @TODO: move stbi__convert_format16 to here
   // @TODO: special case RGB-to-Y (and RGBA-to-YA) for 8-bit-to-16-bit case to keep more precision

   if (stbi__vertically_flip_on_load) {
      int channels = req_comp ? req_comp : *comp;
      FUNC3(result, *x, *y, channels * sizeof(stbi__uint16));
   }

   return (stbi__uint16 *) result;
}