#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nb_streams; int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int umf_length; int umf_track_offset; int umf_track_size; int umf_media_offset; int umf_media_size; } ;
typedef  TYPE_1__ GXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;

    FUNC0(pb, gxf->umf_length); /* total length of the umf data */
    FUNC0(pb, 3); /* version */
    FUNC0(pb, s->nb_streams+1);
    FUNC0(pb, gxf->umf_track_offset); /* umf track section offset */
    FUNC0(pb, gxf->umf_track_size);
    FUNC0(pb, s->nb_streams+1);
    FUNC0(pb, gxf->umf_media_offset);
    FUNC0(pb, gxf->umf_media_size);
    FUNC0(pb, gxf->umf_length); /* user data offset */
    FUNC0(pb, 0); /* user data size */
    FUNC0(pb, 0); /* reserved */
    FUNC0(pb, 0); /* reserved */
    return 48;
}