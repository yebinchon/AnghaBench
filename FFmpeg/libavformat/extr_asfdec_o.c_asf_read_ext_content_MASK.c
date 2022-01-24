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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  GUIDParseTable ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ ASFContext ;

/* Variables and functions */
 int ASF_BOOL ; 
 int ASF_DWORD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf  = s->priv_data;
    AVIOContext *pb  = s->pb;
    uint64_t size    = FUNC6(pb);
    uint16_t nb_desc = FUNC5(pb);
    int i, ret;

    for (i = 0; i < nb_desc; i++) {
        uint16_t name_len, type, val_len;
        uint8_t *name = NULL;

        name_len = FUNC5(pb);
        if (!name_len)
            return AVERROR_INVALIDDATA;
        name = FUNC3(name_len);
        if (!name)
            return FUNC0(ENOMEM);
        FUNC4(pb, name_len, name,
                         name_len);
        type    = FUNC5(pb);
        // BOOL values are 16 bits long in the Metadata Object
        // but 32 bits long in the Extended Content Description Object
        if (type == ASF_BOOL)
            type = ASF_DWORD;
        val_len = FUNC5(pb);

        ret = FUNC7(s, name, name_len, val_len, type, &s->metadata);
        FUNC2(&name);
        if (ret < 0)
            return ret;
    }

    FUNC1(pb, asf->offset, size);
    return 0;
}