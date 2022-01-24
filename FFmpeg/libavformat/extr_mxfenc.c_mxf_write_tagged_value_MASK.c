#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tagged_value_count; } ;
typedef  TYPE_1__ MXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  TaggedValue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mxf_indirect_value_utf16le ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, const char* name, const char* value)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int name_size = FUNC3(name);
    int indirect_value_size = 13 + FUNC3(value);

    if (!name_size || indirect_value_size == 13)
        return 1;

    FUNC6(pb, 0x013f00);
    FUNC2(pb, 24 + name_size + indirect_value_size);

    // write instance UID
    FUNC4(pb, 16, 0x3C0A);
    FUNC7(pb, TaggedValue, mxf->tagged_value_count);

    // write name
    FUNC5(pb, 0x5001, name); // Name

    // write indirect value
    FUNC4(pb, indirect_value_size, 0x5003);
    FUNC1(pb, mxf_indirect_value_utf16le, 17);
    FUNC0(pb, value);

    mxf->tagged_value_count++;
    return 0;
}