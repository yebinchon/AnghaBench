#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ff_asf_guid ;
struct TYPE_7__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
#define  ASF_BYTE_ARRAY 130 
#define  ASF_GUID 129 
#define  ASF_UNICODE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ **) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, const uint8_t *name, uint16_t name_len,
                            uint16_t val_len, uint16_t type, AVDictionary **met)
{
    int ret;
    ff_asf_guid guid;

    if (val_len) {
        switch (type) {
        case ASF_UNICODE:
            FUNC1(s, name, val_len, type, met);
            break;
        case ASF_BYTE_ARRAY:
            if (!FUNC5(name, "WM/Picture")) // handle cover art
                FUNC0(s, val_len);
            else if (!FUNC5(name, "ID3")) // handle ID3 tag
                FUNC4(s, val_len);
            else
                FUNC1(s, name, val_len, type, met);
            break;
        case ASF_GUID:
            FUNC3(s->pb, &guid);
            break;
        default:
            if ((ret = FUNC2(s, name, type, met)) < 0)
                return ret;
            break;
        }
    }

    return 0;
}