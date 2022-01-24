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
struct dshow_ctx {char** device_name; } ;
struct TYPE_3__ {char* url; struct dshow_ctx* priv_data; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *avctx)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    char **device_name = ctx->device_name;
    char *name = FUNC1(avctx->url);
    char *tmp = name;
    int ret = 1;
    char *type;

    while ((type = FUNC3(tmp, "="))) {
        char *token = FUNC3(NULL, ":");
        tmp = NULL;

        if        (!FUNC2(type, "video")) {
            device_name[0] = token;
        } else if (!FUNC2(type, "audio")) {
            device_name[1] = token;
        } else {
            device_name[0] = NULL;
            device_name[1] = NULL;
            break;
        }
    }

    if (!device_name[0] && !device_name[1]) {
        ret = 0;
    } else {
        if (device_name[0])
            device_name[0] = FUNC1(device_name[0]);
        if (device_name[1])
            device_name[1] = FUNC1(device_name[1]);
    }

    FUNC0(name);
    return ret;
}