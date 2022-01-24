#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ UID ;
struct TYPE_6__ {int /*<<< orphan*/ * fc; } ;
typedef  TYPE_2__ MXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__,char*) ; 

__attribute__((used)) static int FUNC3(void *arg, AVIOContext *pb, int tag, int size, UID _uid, int64_t klv_offset)
{
    MXFContext *mxf = arg;
    AVFormatContext *s = mxf->fc;
    int ret;
    UID uid = { 0 };
    char *str = NULL;
    uint64_t ts;
    switch (tag) {
    case 0x3C01:
        FUNC0(pb, "company_name", str);
        break;
    case 0x3C02:
        FUNC0(pb, "product_name", str);
        break;
    case 0x3C04:
        FUNC0(pb, "product_version", str);
        break;
    case 0x3C05:
        FUNC2(pb, "product_uid", uid, str);
        break;
    case 0x3C06:
        FUNC1(pb, "modification_date", ts, str);
        break;
    case 0x3C08:
        FUNC0(pb, "application_platform", str);
        break;
    case 0x3C09:
        FUNC2(pb, "generation_uid", uid, str);
        break;
    case 0x3C0A:
        FUNC2(pb, "uid", uid, str);
        break;
    }
    return 0;
}