#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/  tile_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  tile_data; } ;
struct TYPE_10__ {TYPE_1__ tile_group; } ;
struct TYPE_13__ {int /*<<< orphan*/  tile_data; } ;
struct TYPE_14__ {int /*<<< orphan*/  padding; int /*<<< orphan*/  metadata; TYPE_3__ tile_list; TYPE_2__ frame; TYPE_5__ tile_group; } ;
struct TYPE_12__ {int obu_type; } ;
struct TYPE_15__ {TYPE_6__ obu; TYPE_4__ header; } ;
typedef  TYPE_7__ AV1RawOBU ;

/* Variables and functions */
#define  AV1_OBU_FRAME 132 
#define  AV1_OBU_METADATA 131 
#define  AV1_OBU_PADDING 130 
#define  AV1_OBU_TILE_GROUP 129 
#define  AV1_OBU_TILE_LIST 128 
 int /*<<< orphan*/  FUNC0 (TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *opaque, uint8_t *content)
{
    AV1RawOBU *obu = (AV1RawOBU*)content;

    switch (obu->header.obu_type) {
    case AV1_OBU_TILE_GROUP:
        FUNC3(&obu->obu.tile_group.tile_data);
        break;
    case AV1_OBU_FRAME:
        FUNC3(&obu->obu.frame.tile_group.tile_data);
        break;
    case AV1_OBU_TILE_LIST:
        FUNC3(&obu->obu.tile_list.tile_data);
        break;
    case AV1_OBU_METADATA:
        FUNC1(&obu->obu.metadata);
        break;
    case AV1_OBU_PADDING:
        FUNC2(&obu->obu.padding);
        break;
    }

    FUNC0(&obu);
}