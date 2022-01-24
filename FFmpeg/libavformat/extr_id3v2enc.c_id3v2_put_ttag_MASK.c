#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  enum ID3v2Encoding { ____Placeholder_ID3v2Encoding } ID3v2Encoding ;
struct TYPE_3__ {int version; } ;
typedef  TYPE_1__ ID3v2EncContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int ID3v2_ENCODING_ISO8859 ; 
 int ID3v2_ENCODING_UTF16BOM ; 
 int ID3v2_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(ID3v2EncContext *id3, AVIOContext *avioc, const char *str1, const char *str2,
                          uint32_t tag, enum ID3v2Encoding enc)
{
    int len;
    uint8_t *pb;
    AVIOContext *dyn_buf;
    if (FUNC3(&dyn_buf) < 0)
        return FUNC0(ENOMEM);

    /* check if the strings are ASCII-only and use UTF16 only if
     * they're not */
    if (enc == ID3v2_ENCODING_UTF16BOM && FUNC10(str1) &&
        (!str2 || FUNC10(str2)))
        enc = ID3v2_ENCODING_ISO8859;

    FUNC4(dyn_buf, enc);
    FUNC8(dyn_buf, str1, enc);
    if (str2)
        FUNC8(dyn_buf, str2, enc);
    len = FUNC2(dyn_buf, &pb);

    FUNC6(avioc, tag);
    /* ID3v2.3 frame size is not sync-safe */
    if (id3->version == 3)
        FUNC6(avioc, len);
    else
        FUNC9(avioc, len);
    FUNC5(avioc, 0);
    FUNC7(avioc, pb, len);

    FUNC1(&pb);
    return len + ID3v2_HEADER_SIZE;
}