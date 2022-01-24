#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int extradata_size; int /*<<< orphan*/  extradata; scalar_t__ priv_data; } ;
typedef  int /*<<< orphan*/  DVDSubContext ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (char*,char*,int*,int*) ; 
 int FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx)
{
    DVDSubContext *ctx = (DVDSubContext*) avctx->priv_data;
    char *dataorig, *data;
    int ret = 1;

    if (!avctx->extradata || !avctx->extradata_size)
        return 1;

    dataorig = data = FUNC2(avctx->extradata_size+1);
    if (!data)
        return FUNC0(ENOMEM);
    FUNC4(data, avctx->extradata, avctx->extradata_size);
    data[avctx->extradata_size] = '\0';

    for(;;) {
        int pos = FUNC7(data, "\n\r");
        if (pos==0 && *data==0)
            break;

        if (FUNC8("palette:", data, 8) == 0) {
            FUNC5(ctx, data + 8);
        } else if (FUNC8("size:", data, 5) == 0) {
            int w, h;
            if (FUNC6(data + 5, "%dx%d", &w, &h) == 2) {
               ret = FUNC3(avctx, w, h);
               if (ret < 0)
                   goto fail;
            }
        }

        data += pos;
        data += FUNC9(data, "\n\r");
    }

fail:
    FUNC1(dataorig);
    return ret;
}