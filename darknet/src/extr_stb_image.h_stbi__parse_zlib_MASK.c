#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  z_distance; int /*<<< orphan*/  z_length; scalar_t__ code_buffer; scalar_t__ num_bits; } ;
typedef  TYPE_1__ stbi__zbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stbi__zdefault_distance ; 
 int /*<<< orphan*/  stbi__zdefault_length ; 
 int FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(stbi__zbuf *a, int parse_header)
{
   int final, type;
   if (parse_header)
      if (!FUNC3(a)) return 0;
   a->num_bits = 0;
   a->code_buffer = 0;
   do {
      final = FUNC5(a,1);
      type = FUNC5(a,2);
      if (type == 0) {
         if (!FUNC2(a)) return 0;
      } else if (type == 3) {
         return 0;
      } else {
         if (type == 1) {
            // use fixed code lengths
            if (!FUNC4(&a->z_length  , stbi__zdefault_length  , 288)) return 0;
            if (!FUNC4(&a->z_distance, stbi__zdefault_distance,  32)) return 0;
         } else {
            if (!FUNC0(a)) return 0;
         }
         if (!FUNC1(a)) return 0;
      }
   } while (!final);
   return 1;
}