#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  category; } ;
struct TYPE_10__ {int /*<<< orphan*/ * priv_data; TYPE_1__* iformat; } ;
struct TYPE_9__ {scalar_t__ priv_data_size; TYPE_3__* priv_class; } ;
typedef  TYPE_1__ AVInputFormat ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVClass ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int FUNC7(AVFormatContext **avctx, AVInputFormat *iformat, const char *format)
{
    AVFormatContext *s;
    int ret = 0;

    *avctx = NULL;
    if (!iformat && !format)
        return FUNC0(EINVAL);
    if (!(s = FUNC5()))
        return FUNC0(ENOMEM);

    if (!iformat)
        iformat = FUNC2(format);
    if (!iformat || !iformat->priv_class || !FUNC1(iformat->priv_class->category)) {
        ret = FUNC0(EINVAL);
        goto error;
    }
    s->iformat = iformat;
    if (s->iformat->priv_data_size > 0) {
        s->priv_data = FUNC3(s->iformat->priv_data_size);
        if (!s->priv_data) {
            ret = FUNC0(ENOMEM);
            goto error;
        }
        if (s->iformat->priv_class) {
            *(const AVClass**)s->priv_data= s->iformat->priv_class;
            FUNC4(s->priv_data);
        }
    } else
        s->priv_data = NULL;

    *avctx = s;
    return 0;
  error:
    FUNC6(s);
    return ret;
}