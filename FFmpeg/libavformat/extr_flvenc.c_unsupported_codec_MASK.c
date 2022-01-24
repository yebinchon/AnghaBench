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
struct TYPE_3__ {char* name; } ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_1__ AVCodecDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char*) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s,
                             const char* type, int codec_id)
{
    const AVCodecDescriptor *desc = FUNC2(codec_id);
    FUNC1(s, AV_LOG_ERROR,
           "%s codec %s not compatible with flv\n",
            type,
            desc ? desc->name : "unknown");
    return FUNC0(ENOSYS);
}