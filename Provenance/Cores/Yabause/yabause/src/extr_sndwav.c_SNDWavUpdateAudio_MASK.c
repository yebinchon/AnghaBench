#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wavefp ; 

__attribute__((used)) static void FUNC2(u32 *leftchanbuffer, u32 *rightchanbuffer, u32 num_samples)
{
   s16 stereodata16[44100 / 50];
   FUNC0((s32 *)leftchanbuffer, (s32 *)rightchanbuffer, (s16 *)stereodata16, num_samples);
   FUNC1((void *)stereodata16, sizeof(s16) * 2, num_samples, wavefp);
}