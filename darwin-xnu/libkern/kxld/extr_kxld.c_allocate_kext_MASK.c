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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int kxld_addr_t ;
struct TYPE_3__ {int (* allocate_callback ) (scalar_t__,int*,void*) ;int /*<<< orphan*/  kext; } ;
typedef  TYPE_1__ KXLDContext ;
typedef  int KXLDAllocateFlags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  finish ; 
 int kKxldAllocateWritable ; 
 int /*<<< orphan*/  kKxldLogErr ; 
 int /*<<< orphan*/  kKxldLogLinking ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int*,void*) ; 

__attribute__((used)) static u_char *
FUNC9(KXLDContext *context,
              void *callback_data,
              kxld_addr_t *vmaddr_out,
              u_long *vmsize_out,
              u_char **linked_object_alloc_out)
{
    KXLDAllocateFlags   flags                   = 0;
    kxld_addr_t         vmaddr                  = 0;
    u_long              vmsize                  = 0;
    u_long              header_size             = 0;
    u_char            * linked_object           = NULL;
    
    *linked_object_alloc_out = NULL;
    
    FUNC2(context->kext, &header_size, &vmsize);
    
    vmaddr = context->allocate_callback(vmsize, &flags, callback_data);
    FUNC7(!(vmaddr & (FUNC1()-1)), finish,
                   FUNC4(kKxldLogLinking, kKxldLogErr,
                            "Load address %p is not page-aligned.",
                            (void *) (uintptr_t) vmaddr));
    
    if (flags & kKxldAllocateWritable) {
        linked_object = (u_char *) (u_long) vmaddr;
    } else {
        linked_object = FUNC5(vmsize);
        FUNC6(linked_object, finish);
        
        *linked_object_alloc_out = linked_object;
    }
    
    FUNC3(context->kext, vmsize);
    
    /* Zero out the memory before we fill it.  We fill this buffer in a
     * sparse fashion, and it's simpler to clear it now rather than
     * track and zero any pieces we didn't touch after we've written
     * all of the sections to memory.
     */
    FUNC0(linked_object, vmsize);
    *vmaddr_out = vmaddr;
    *vmsize_out = vmsize;
    
finish:
    return linked_object;
}