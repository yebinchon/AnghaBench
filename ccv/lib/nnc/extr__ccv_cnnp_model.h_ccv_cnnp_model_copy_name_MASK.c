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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ ccv_cnnp_model_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const* const,size_t const) ; 
 size_t FUNC2 (char const* const,int) ; 

__attribute__((used)) static inline void FUNC3(ccv_cnnp_model_t* const self, const char* const name)
{
	if (name)
	{
		const size_t len = FUNC2(name, 63);
		const size_t n = len + 1;
		self->name = (char*)FUNC0(n);
		// Don't use strndup because this way I can have custom allocator (for ccmalloc).
		FUNC1(self->name, name, n);
		self->name[len] = 0;
	}
}