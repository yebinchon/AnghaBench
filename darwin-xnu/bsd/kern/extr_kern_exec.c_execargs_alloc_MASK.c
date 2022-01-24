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
typedef  scalar_t__ wait_result_t ;
typedef  scalar_t__ vm_offset_t ;
struct image_params {char* ip_strings; char* ip_vdata; char* ip_strendp; int ip_argspace; int ip_strspace; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int EINTR ; 
 int ENOMEM ; 
 scalar_t__ KERN_SUCCESS ; 
 int NCARGS ; 
 int PAGE_SIZE ; 
 scalar_t__ THREAD_AWAKENED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* execargs_cache ; 
 int execargs_cache_size ; 
 scalar_t__ execargs_free_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char**) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  execargs_waiters ; 

__attribute__((used)) static int
FUNC6(struct image_params *imgp)
{
	kern_return_t kret;
	wait_result_t res;
	int i, cache_index = -1;

	FUNC1();

	while (execargs_free_count == 0) {
		execargs_waiters++;
		res = FUNC2();
		execargs_waiters--;
		if (res != THREAD_AWAKENED) {
			FUNC3();
			return (EINTR);
		}
	}

	execargs_free_count--;

	for (i = 0; i < execargs_cache_size; i++) {
		vm_offset_t element = execargs_cache[i];
		if (element) {
			cache_index = i;
			imgp->ip_strings = (char *)(execargs_cache[i]);
			execargs_cache[i] = 0;
			break;
		}
	}

	FUNC0(execargs_free_count >= 0);

	FUNC3();
	
	if (cache_index == -1) {
		kret = FUNC4(&imgp->ip_strings);
	}
	else
		kret = FUNC5(imgp->ip_strings);

	FUNC0(kret == KERN_SUCCESS);
	if (kret != KERN_SUCCESS) {
		return (ENOMEM);
	}

	/* last page used to read in file headers */
	imgp->ip_vdata = imgp->ip_strings + ( NCARGS + PAGE_SIZE );
	imgp->ip_strendp = imgp->ip_strings;
	imgp->ip_argspace = NCARGS;
	imgp->ip_strspace = ( NCARGS + PAGE_SIZE );

	return (0);
}