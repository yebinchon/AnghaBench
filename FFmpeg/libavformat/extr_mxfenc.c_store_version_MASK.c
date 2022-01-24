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
struct TYPE_3__ {int flags; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int AVFMT_FLAG_BITEXACT ; 
 int /*<<< orphan*/  LIBAVFORMAT_VERSION_MAJOR ; 
 int /*<<< orphan*/  LIBAVFORMAT_VERSION_MICRO ; 
 int /*<<< orphan*/  LIBAVFORMAT_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(AVFormatContext *s){
    AVIOContext *pb = s->pb;

    if (s->flags & AVFMT_FLAG_BITEXACT) {
        FUNC0(pb, 0); // major
        FUNC0(pb, 0); // minor
        FUNC0(pb, 0); // tertiary
    } else {
        FUNC0(pb, LIBAVFORMAT_VERSION_MAJOR); // major
        FUNC0(pb, LIBAVFORMAT_VERSION_MINOR); // minor
        FUNC0(pb, LIBAVFORMAT_VERSION_MICRO); // tertiary
    }
    FUNC0(pb, 0); // patch
    FUNC0(pb, 0); // release
}