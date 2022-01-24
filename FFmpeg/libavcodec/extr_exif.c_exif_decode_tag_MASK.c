#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum TiffTypes { ____Placeholder_TiffTypes } TiffTypes ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (void*,unsigned int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 char* FUNC6 (unsigned int) ; 
 int FUNC7 (void*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,unsigned int*,int*,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC11(void *logctx, GetByteContext *gbytes, int le,
                           int depth, AVDictionary **metadata)
{
    int ret, cur_pos;
    unsigned id, count;
    enum TiffTypes type;

    if (depth > 2) {
        return 0;
    }

    FUNC9(gbytes, le, &id, &type, &count, &cur_pos);

    if (!FUNC4(gbytes)) {
        FUNC3(gbytes, cur_pos, SEEK_SET);
        return 0;
    }

    // read count values and add it metadata
    // store metadata or proceed with next IFD
    ret = FUNC8(id);
    if (ret) {
        ret = FUNC7(logctx, gbytes, le, depth + 1, metadata);
    } else {
        const char *name = FUNC6(id);
        char *use_name   = (char*) name;

        if (!use_name) {
            use_name = FUNC2(7);
            if (!use_name) {
                return FUNC0(ENOMEM);
            }
            FUNC10(use_name, 7, "0x%04X", id);
        }

        ret = FUNC5(logctx, count, type, use_name, NULL,
                                gbytes, le, metadata);

        if (!name) {
            FUNC1(&use_name);
        }
    }

    FUNC3(gbytes, cur_pos, SEEK_SET);

    return ret;
}