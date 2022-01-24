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
struct TYPE_3__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,unsigned char*,int) ;} ;
typedef  TYPE_1__ stbi__write_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 

void FUNC4(stbi__write_context *s, int length, unsigned char databyte)
{
   unsigned char lengthbyte = FUNC1(length+128);
   FUNC0(length+128 <= 255);
   s->func(s->context, &lengthbyte, 1);
   s->func(s->context, &databyte, 1);
}