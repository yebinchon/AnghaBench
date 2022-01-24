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
typedef  int /*<<< orphan*/  TRexChar ;
typedef  int /*<<< orphan*/  TRexBool ;
typedef  int /*<<< orphan*/  TRex ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 

TRexBool FUNC2(TRex* exp,const TRexChar* text, const TRexChar** out_begin, const TRexChar** out_end)
{
	return FUNC1(exp,text,text + FUNC0(text),out_begin,out_end);
}