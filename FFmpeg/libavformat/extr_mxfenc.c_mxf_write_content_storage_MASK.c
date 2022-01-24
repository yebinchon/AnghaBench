#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* pb; } ;
struct TYPE_13__ {scalar_t__ buf_ptr; } ;
struct TYPE_12__ {int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ MXFPackage ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  ContentStorage ; 
 int /*<<< orphan*/  EssenceContainerData ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(AVFormatContext *s, MXFPackage *packages, int package_count)
{
    AVIOContext *pb = s->pb;
    int i;

    FUNC3(pb, 0x011800);
    FUNC0(s, "content storage key", pb->buf_ptr - 16);
    FUNC1(pb, 60 + (16 * package_count));

    // write uid
    FUNC2(pb, 16, 0x3C0A);
    FUNC5(pb, ContentStorage, 0);
    FUNC0(s, "content storage uid", pb->buf_ptr - 16);

    // write package reference
    FUNC2(pb, 16 * package_count + 8, 0x1901);
    FUNC4(pb, package_count);
    for (i = 0; i < package_count; i++) {
        FUNC5(pb, packages[i].type, packages[i].instance);
    }

    // write essence container data
    FUNC2(pb, 8 + 16, 0x1902);
    FUNC4(pb, 1);
    FUNC5(pb, EssenceContainerData, 0);
}