#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {int /*<<< orphan*/ * kextExecutable; } ;
struct TYPE_9__ {int /*<<< orphan*/  relocator; TYPE_1__ split_info; int /*<<< orphan*/ * file; } ;
struct TYPE_8__ {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  KXLDSym ;
typedef  TYPE_2__ KXLDSect ;
typedef  int /*<<< orphan*/  KXLDReloc ;
typedef  TYPE_3__ KXLDObject ;

/* Variables and functions */
 scalar_t__ isOldInterface ; 
 scalar_t__ FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

const KXLDSym * 
FUNC2(const KXLDObject *object, 
    const KXLDReloc *reloc, const KXLDSect *sect)
{
    const KXLDSym *sym = NULL;
    u_char *my_file;
    
    if (isOldInterface) {
        my_file = object->file;
    }
    else {
        my_file = object->split_info.kextExecutable;
    }
    
    if (FUNC0(object)) {
       sym = FUNC1(&object->relocator, reloc, my_file);
   } else {
       sym = FUNC1(&object->relocator, reloc, sect->data);
   }
    return sym;
}