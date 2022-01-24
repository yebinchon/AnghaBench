#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_15__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_14__ {double MaxCLL; double MaxFALL; } ;
struct TYPE_13__ {int /*<<< orphan*/  max_luminance; int /*<<< orphan*/  min_luminance; scalar_t__ has_luminance; int /*<<< orphan*/ * white_point; int /*<<< orphan*/ ** display_primaries; scalar_t__ has_primaries; } ;
struct TYPE_12__ {scalar_t__ type; int size; scalar_t__ data; } ;
struct TYPE_11__ {scalar_t__ projection; double padding; scalar_t__ roll; scalar_t__ pitch; scalar_t__ yaw; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  SectionID ;
typedef  TYPE_1__ AVStereo3D ;
typedef  TYPE_2__ AVSphericalMapping ;
typedef  TYPE_3__ AVPacketSideData ;
typedef  TYPE_4__ AVMasteringDisplayMetadata ;
typedef  TYPE_5__ AVContentLightMetadata ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AV_PKT_DATA_CONTENT_LIGHT_LEVEL ; 
 scalar_t__ AV_PKT_DATA_DISPLAYMATRIX ; 
 scalar_t__ AV_PKT_DATA_MASTERING_DISPLAY_METADATA ; 
 scalar_t__ AV_PKT_DATA_SKIP_SAMPLES ; 
 scalar_t__ AV_PKT_DATA_SPHERICAL ; 
 scalar_t__ AV_PKT_DATA_STEREO3D ; 
 double FUNC0 (scalar_t__) ; 
 double FUNC1 (scalar_t__) ; 
 scalar_t__ AV_SPHERICAL_CUBEMAP ; 
 scalar_t__ AV_SPHERICAL_EQUIRECTANGULAR_TILE ; 
 int AV_STEREO3D_FLAG_INVERT ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (scalar_t__) ; 
 char const* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*,size_t*,size_t*) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,double) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(WriterContext *w,
                                AVCodecParameters *par,
                                const AVPacketSideData *side_data,
                                int nb_side_data,
                                SectionID id_data_list,
                                SectionID id_data)
{
    int i;

    FUNC12(w, id_data_list);
    for (i = 0; i < nb_side_data; i++) {
        const AVPacketSideData *sd = &side_data[i];
        const char *name = FUNC3(sd->type);

        FUNC12(w, id_data);
        FUNC9("side_data_type", name ? name : "unknown");
        if (sd->type == AV_PKT_DATA_DISPLAYMATRIX && sd->size >= 9*4) {
            FUNC10(w, "displaymatrix", sd->data, 9, " %11d", 3, 4, 1);
            FUNC7("rotation", FUNC2((int32_t *)sd->data));
        } else if (sd->type == AV_PKT_DATA_STEREO3D) {
            const AVStereo3D *stereo = (AVStereo3D *)sd->data;
            FUNC9("type", FUNC6(stereo->type));
            FUNC7("inverted", !!(stereo->flags & AV_STEREO3D_FLAG_INVERT));
        } else if (sd->type == AV_PKT_DATA_SPHERICAL) {
            const AVSphericalMapping *spherical = (AVSphericalMapping *)sd->data;
            FUNC9("projection", FUNC4(spherical->projection));
            if (spherical->projection == AV_SPHERICAL_CUBEMAP) {
                FUNC7("padding", spherical->padding);
            } else if (spherical->projection == AV_SPHERICAL_EQUIRECTANGULAR_TILE) {
                size_t l, t, r, b;
                FUNC5(spherical, par->width, par->height,
                                         &l, &t, &r, &b);
                FUNC7("bound_left", l);
                FUNC7("bound_top", t);
                FUNC7("bound_right", r);
                FUNC7("bound_bottom", b);
            }

            FUNC7("yaw", (double) spherical->yaw / (1 << 16));
            FUNC7("pitch", (double) spherical->pitch / (1 << 16));
            FUNC7("roll", (double) spherical->roll / (1 << 16));
        } else if (sd->type == AV_PKT_DATA_SKIP_SAMPLES && sd->size == 10) {
            FUNC7("skip_samples",    FUNC0(sd->data));
            FUNC7("discard_padding", FUNC0(sd->data + 4));
            FUNC7("skip_reason",     FUNC1(sd->data + 8));
            FUNC7("discard_reason",  FUNC1(sd->data + 9));
        } else if (sd->type == AV_PKT_DATA_MASTERING_DISPLAY_METADATA) {
            AVMasteringDisplayMetadata *metadata = (AVMasteringDisplayMetadata *)sd->data;

            if (metadata->has_primaries) {
                FUNC8("red_x", metadata->display_primaries[0][0], '/');
                FUNC8("red_y", metadata->display_primaries[0][1], '/');
                FUNC8("green_x", metadata->display_primaries[1][0], '/');
                FUNC8("green_y", metadata->display_primaries[1][1], '/');
                FUNC8("blue_x", metadata->display_primaries[2][0], '/');
                FUNC8("blue_y", metadata->display_primaries[2][1], '/');

                FUNC8("white_point_x", metadata->white_point[0], '/');
                FUNC8("white_point_y", metadata->white_point[1], '/');
            }

            if (metadata->has_luminance) {
                FUNC8("min_luminance", metadata->min_luminance, '/');
                FUNC8("max_luminance", metadata->max_luminance, '/');
            }
        } else if (sd->type == AV_PKT_DATA_CONTENT_LIGHT_LEVEL) {
            AVContentLightMetadata *metadata = (AVContentLightMetadata *)sd->data;
            FUNC7("max_content", metadata->MaxCLL);
            FUNC7("max_average", metadata->MaxFALL);
        }
        FUNC11(w);
    }
    FUNC11(w);
}