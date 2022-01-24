#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  payload_ref; } ;
struct TYPE_6__ {TYPE_1__ itut_t35; } ;
struct TYPE_7__ {int metadata_type; TYPE_2__ metadata; } ;
typedef  TYPE_3__ AV1RawMetadata ;

/* Variables and functions */
#define  AV1_METADATA_TYPE_ITUT_T35 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(AV1RawMetadata *md)
{
    switch (md->metadata_type) {
    case AV1_METADATA_TYPE_ITUT_T35:
        FUNC0(&md->metadata.itut_t35.payload_ref);
        break;
    }
}