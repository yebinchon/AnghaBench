#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UID ;
struct TYPE_5__ {int type; } ;
typedef  TYPE_1__ MXFStructuralComponent ;
typedef  int /*<<< orphan*/  MXFEssenceGroup ;
typedef  int /*<<< orphan*/  MXFContext ;

/* Variables and functions */
 int /*<<< orphan*/  AnyType ; 
#define  EssenceGroup 129 
#define  SourceClip 128 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MXFStructuralComponent* FUNC2(MXFContext *mxf, UID *strong_ref)
{
    MXFStructuralComponent *component = NULL;

    component = FUNC1(mxf, strong_ref, AnyType);
    if (!component)
        return NULL;
    switch (component->type) {
        case SourceClip:
            return component;
        case EssenceGroup:
            return FUNC0(mxf, (MXFEssenceGroup*) component);
        default:
            break;
    }
    return NULL;
}