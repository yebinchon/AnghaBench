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
struct TYPE_3__ {int* new_extradata_size; int /*<<< orphan*/ * new_extradata; } ;
typedef  TYPE_1__ FLVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(FLVContext *flv, AVIOContext *pb, int stream,
                               int size)
{
    if (!size)
        return 0;

    FUNC1(flv->new_extradata[stream]);
    flv->new_extradata[stream] = FUNC2(size +
                                            AV_INPUT_BUFFER_PADDING_SIZE);
    if (!flv->new_extradata[stream])
        return FUNC0(ENOMEM);
    flv->new_extradata_size[stream] = size;
    FUNC3(pb, flv->new_extradata[stream], size);
    return 0;
}