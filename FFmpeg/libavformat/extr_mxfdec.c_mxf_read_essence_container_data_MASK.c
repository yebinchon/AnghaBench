#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  UID ;
struct TYPE_2__ {void* body_sid; void* index_sid; int /*<<< orphan*/  package_uid; int /*<<< orphan*/  package_ul; } ;
typedef  TYPE_1__ MXFEssenceContainerData ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFEssenceContainerData *essence_data = arg;
    switch(tag) {
        case 0x2701:
            /* linked package umid UMID */
            FUNC1(pb, essence_data->package_ul, 16);
            FUNC1(pb, essence_data->package_uid, 16);
            break;
        case 0x3f06:
            essence_data->index_sid = FUNC0(pb);
            break;
        case 0x3f07:
            essence_data->body_sid = FUNC0(pb);
            break;
    }
    return 0;
}