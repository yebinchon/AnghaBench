#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int ppkg_num; int flags; int /*<<< orphan*/  lpkg_num; struct TYPE_8__* next; } ;
typedef  TYPE_1__ x86_pkg_t ;
struct TYPE_9__ {int cpu_phys_number; } ;
typedef  TYPE_2__ cpu_data_t ;
struct TYPE_10__ {int nPThreadsPerPackage; int /*<<< orphan*/  nPackages; } ;

/* Variables and functions */
 int X86PKG_FL_PRESENT ; 
 int X86PKG_FL_READY ; 
 int /*<<< orphan*/  FUNC0 (long*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 TYPE_2__* FUNC2 (int) ; 
 TYPE_1__* free_pkgs ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__ topoParms ; 
 int /*<<< orphan*/  x86_topo_lock ; 

__attribute__((used)) static x86_pkg_t *
FUNC7(int cpu)
{
    x86_pkg_t	*pkg;
    cpu_data_t	*cpup;

    cpup = FUNC2(cpu);

    FUNC4(&x86_topo_lock);
    if (free_pkgs != NULL) {
	pkg = free_pkgs;
	free_pkgs = pkg->next;
	pkg->next = NULL;
	FUNC6(&x86_topo_lock);
    } else {
	FUNC6(&x86_topo_lock);
	pkg = FUNC3(sizeof(x86_pkg_t));
	if (pkg == NULL)
	    FUNC5("x86_package_alloc() kalloc of x86_pkg_t failed!\n");
    }

    FUNC1((void *) pkg, sizeof(x86_pkg_t));

    pkg->ppkg_num = cpup->cpu_phys_number / topoParms.nPThreadsPerPackage;

    pkg->lpkg_num = topoParms.nPackages;
    FUNC0((long *) &topoParms.nPackages, 1);

    pkg->flags = X86PKG_FL_PRESENT | X86PKG_FL_READY;
    return(pkg);
}