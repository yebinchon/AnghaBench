#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  scalar_t__ u_int ;
struct mach_header_64 {int dummy; } ;
struct mach_header {int dummy; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_16__ {scalar_t__ nitems; } ;
struct TYPE_15__ {scalar_t__ has_versionmin; } ;
struct TYPE_13__ {scalar_t__ has_splitinfolc; } ;
struct TYPE_12__ {scalar_t__ has_srcversion; } ;
struct TYPE_11__ {scalar_t__ has_uuid; } ;
struct TYPE_14__ {TYPE_3__ splitinfolc; TYPE_2__ srcversion; TYPE_6__ versionmin; TYPE_1__ uuid; TYPE_8__ segs; } ;
typedef  int /*<<< orphan*/  KXLDSeg ;
typedef  TYPE_4__ KXLDObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__ const*) ; 
 scalar_t__ isSplitKext ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_8__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_4__ const*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 scalar_t__ FUNC10 (TYPE_4__ const*) ; 

__attribute__((used)) static u_long
FUNC11(const KXLDObject *object)
{
    KXLDSeg *seg = NULL;
    u_long header_size = 0;
    u_int i = 0;
    boolean_t   object_is_32_bit = FUNC2(object);

    FUNC0(object);

    /* Mach, segment, symtab, and UUID headers */

    header_size += object_is_32_bit ? sizeof(struct mach_header) : sizeof(struct mach_header_64);

    for (i = 0; i < object->segs.nitems; ++i) {
        seg = FUNC1(&object->segs, i);
        header_size += FUNC4(seg, object_is_32_bit);
    }

    header_size += FUNC7();

#if KXLD_PIC_KEXTS
    if (target_supports_slideable_kexts(object)) {
        header_size += kxld_reloc_get_macho_header_size();
    }
#endif	/* KXLD_PIC_KEXTS */

    if (object->uuid.has_uuid) {
        header_size += FUNC8();
    }

    if (object->versionmin.has_versionmin) {
        header_size += FUNC9(&object->versionmin);
    }

    if (object->srcversion.has_srcversion) {
        header_size += FUNC6();
    }
    
    if (isSplitKext && object->splitinfolc.has_splitinfolc) {
        header_size += FUNC5();
    }
    
    return header_size;
}