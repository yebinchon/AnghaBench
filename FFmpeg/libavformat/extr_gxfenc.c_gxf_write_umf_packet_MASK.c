#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_9__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {void* umf_start_offset; void* umf_length; int /*<<< orphan*/  umf_media_size; int /*<<< orphan*/  umf_track_size; } ;
typedef  TYPE_1__ GXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  PKT_UMF ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos = FUNC0(pb);

    FUNC3(pb, PKT_UMF);

    /* preamble */
    FUNC1(pb, 3); /* first and last (only) packet */
    FUNC2(pb, gxf->umf_length); /* data length */

    gxf->umf_start_offset = FUNC0(pb);
    FUNC6(s);
    FUNC4(s);
    gxf->umf_track_size = FUNC7(s);
    gxf->umf_media_size = FUNC5(s);
    gxf->umf_length = FUNC0(pb) - gxf->umf_start_offset;
    return FUNC8(pb, pos);
}