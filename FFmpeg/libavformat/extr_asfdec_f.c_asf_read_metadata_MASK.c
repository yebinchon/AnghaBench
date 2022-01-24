#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {TYPE_1__* dar; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
struct TYPE_7__ {int num; int den; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    ASFContext *asf = s->priv_data;
    int n, stream_num, name_len_utf16, name_len_utf8, value_len;
    int ret, i;
    n = FUNC5(pb);

    for (i = 0; i < n; i++) {
        uint8_t *name;
        int value_type;

        FUNC5(pb);  // lang_list_index
        stream_num = FUNC5(pb);
        name_len_utf16 = FUNC5(pb);
        value_type = FUNC5(pb); /* value_type */
        value_len  = FUNC6(pb);

        name_len_utf8 = 2*name_len_utf16 + 1;
        name          = FUNC3(name_len_utf8);
        if (!name)
            return FUNC0(ENOMEM);

        if ((ret = FUNC4(pb, name_len_utf16, name, name_len_utf8)) < name_len_utf16)
            FUNC7(pb, name_len_utf16 - ret);
        FUNC2(s, AV_LOG_TRACE, "%d stream %d name_len %2d type %d len %4d <%s>\n",
                i, stream_num, name_len_utf16, value_type, value_len, name);

        if (!FUNC10(name, "AspectRatioX")){
            int aspect_x = FUNC9(s->pb, value_type, 16);
            if(stream_num < 128)
                asf->dar[stream_num].num = aspect_x;
        } else if(!FUNC10(name, "AspectRatioY")){
            int aspect_y = FUNC9(s->pb, value_type, 16);
            if(stream_num < 128)
                asf->dar[stream_num].den = aspect_y;
        } else {
            FUNC8(s, name, value_type, value_len, 16);
        }
        FUNC1(&name);
    }

    return 0;
}