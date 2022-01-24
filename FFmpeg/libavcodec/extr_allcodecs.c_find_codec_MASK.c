#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_5__ {int id; int capabilities; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 int AV_CODEC_CAP_EXPERIMENTAL ; 
 TYPE_1__* FUNC0 (void**) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static AVCodec *FUNC2(enum AVCodecID id, int (*x)(const AVCodec *))
{
    const AVCodec *p, *experimental = NULL;
    void *i = 0;

    id = FUNC1(id);

    while ((p = FUNC0(&i))) {
        if (!x(p))
            continue;
        if (p->id == id) {
            if (p->capabilities & AV_CODEC_CAP_EXPERIMENTAL && !experimental) {
                experimental = p;
            } else
                return (AVCodec*)p;
        }
    }

    return (AVCodec*)experimental;
}