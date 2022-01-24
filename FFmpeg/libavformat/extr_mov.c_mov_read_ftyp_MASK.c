#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int isom; TYPE_5__* fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  TYPE_2__ MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static int FUNC9(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    uint32_t minor_ver;
    int comp_brand_size;
    char* comp_brands_str;
    uint8_t type[5] = {0};
    int ret = FUNC7(pb, type, 4);
    if (ret < 0)
        return ret;

    if (FUNC8(type, "qt  "))
        c->isom = 1;
    FUNC4(c->fc, AV_LOG_DEBUG, "ISO: File Type Major Brand: %.4s\n",(char *)&type);
    FUNC1(&c->fc->metadata, "major_brand", type, 0);
    minor_ver = FUNC6(pb); /* minor version */
    FUNC2(&c->fc->metadata, "minor_version", minor_ver, 0);

    comp_brand_size = atom.size - 8;
    if (comp_brand_size < 0)
        return AVERROR_INVALIDDATA;
    comp_brands_str = FUNC5(comp_brand_size + 1); /* Add null terminator */
    if (!comp_brands_str)
        return FUNC0(ENOMEM);

    ret = FUNC7(pb, comp_brands_str, comp_brand_size);
    if (ret < 0) {
        FUNC3(&comp_brands_str);
        return ret;
    }
    comp_brands_str[comp_brand_size] = 0;
    FUNC1(&c->fc->metadata, "compatible_brands", comp_brands_str, 0);
    FUNC3(&comp_brands_str);

    return 0;
}