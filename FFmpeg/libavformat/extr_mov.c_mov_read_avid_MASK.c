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
typedef  int /*<<< orphan*/  MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_AVUI ; 
 int /*<<< orphan*/  AV_CODEC_ID_DNXHD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int ret = FUNC0(c, pb, atom, AV_CODEC_ID_AVUI);
    if(ret == 0)
        ret = FUNC0(c, pb, atom, AV_CODEC_ID_DNXHD);
    return ret;
}