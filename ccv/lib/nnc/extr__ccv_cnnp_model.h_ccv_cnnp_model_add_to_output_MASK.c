#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* isa; } ;
typedef  TYPE_2__ ccv_cnnp_model_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_add_to_array_f ;
struct TYPE_7__ {int /*<<< orphan*/  (* add_to_output ) (TYPE_2__* const,int /*<<< orphan*/  const,void* const) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,void* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const,void* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__* const,int /*<<< orphan*/  const,void* const) ; 

__attribute__((used)) static inline void FUNC3(ccv_cnnp_model_t* const self, const ccv_cnnp_add_to_array_f add_to_array, void* const outputs)
{
	if (self->isa->add_to_output)
	{
		FUNC1(self, outputs);
		self->isa->add_to_output(self, add_to_array, outputs);
		FUNC0(self, outputs);
	}
}