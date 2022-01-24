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
struct TYPE_3__ {int metadata_sets_count; int /*<<< orphan*/ ** metadata_sets; } ;
typedef  int /*<<< orphan*/  MXFMetadataSet ;
typedef  TYPE_1__ MXFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **,int,int) ; 

__attribute__((used)) static int FUNC2(MXFContext *mxf, void *metadata_set)
{
    MXFMetadataSet **tmp;

    tmp = FUNC1(mxf->metadata_sets, mxf->metadata_sets_count + 1, sizeof(*mxf->metadata_sets));
    if (!tmp)
        return FUNC0(ENOMEM);
    mxf->metadata_sets = tmp;
    mxf->metadata_sets[mxf->metadata_sets_count] = metadata_set;
    mxf->metadata_sets_count++;
    return 0;
}