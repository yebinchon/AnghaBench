#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ebml_master ;
struct TYPE_2__ {int projection; scalar_t__ roll; scalar_t__ pitch; scalar_t__ yaw; int /*<<< orphan*/  padding; int /*<<< orphan*/  bound_right; int /*<<< orphan*/  bound_left; int /*<<< orphan*/  bound_bottom; int /*<<< orphan*/  bound_top; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_1__ AVSphericalMapping ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PKT_DATA_SPHERICAL ; 
#define  AV_SPHERICAL_CUBEMAP 130 
#define  AV_SPHERICAL_EQUIRECTANGULAR 129 
#define  AV_SPHERICAL_EQUIRECTANGULAR_TILE 128 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOPROJECTION ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOPROJECTIONPOSEPITCH ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOPROJECTIONPOSEROLL ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOPROJECTIONPOSEYAW ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOPROJECTIONPRIVATE ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOPROJECTIONTYPE ; 
 int /*<<< orphan*/  MATROSKA_VIDEO_PROJECTION_TYPE_CUBEMAP ; 
 int /*<<< orphan*/  MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s, AVIOContext *pb,
                                      AVStream *st)
{
    AVIOContext b;
    AVIOContext *dyn_cp;
    int side_data_size = 0;
    int ret, projection_size;
    uint8_t *projection_ptr;
    uint8_t private[20];

    const AVSphericalMapping *spherical =
        (const AVSphericalMapping *)FUNC2(st, AV_PKT_DATA_SPHERICAL,
                                                            &side_data_size);

    if (!side_data_size)
        return 0;

    ret = FUNC4(&dyn_cp);
    if (ret < 0)
        return ret;

    switch (spherical->projection) {
    case AV_SPHERICAL_EQUIRECTANGULAR:
        FUNC12(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONTYPE,
                      MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR);
        break;
    case AV_SPHERICAL_EQUIRECTANGULAR_TILE:
        FUNC9(&b, private, 20, 1, NULL, NULL, NULL, NULL);
        FUNC12(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONTYPE,
                      MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR);
        FUNC6(&b, 0); // version + flags
        FUNC6(&b, spherical->bound_top);
        FUNC6(&b, spherical->bound_bottom);
        FUNC6(&b, spherical->bound_left);
        FUNC6(&b, spherical->bound_right);
        FUNC10(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPRIVATE,
                        private, FUNC5(&b));
        break;
    case AV_SPHERICAL_CUBEMAP:
        FUNC9(&b, private, 12, 1, NULL, NULL, NULL, NULL);
        FUNC12(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONTYPE,
                      MATROSKA_VIDEO_PROJECTION_TYPE_CUBEMAP);
        FUNC6(&b, 0); // version + flags
        FUNC6(&b, 0); // layout
        FUNC6(&b, spherical->padding);
        FUNC10(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPRIVATE,
                        private, FUNC5(&b));
        break;
    default:
        FUNC1(s, AV_LOG_WARNING, "Unknown projection type\n");
        goto end;
    }

    if (spherical->yaw)
        FUNC11(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPOSEYAW,
                       (double) spherical->yaw   / (1 << 16));
    if (spherical->pitch)
        FUNC11(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPOSEPITCH,
                       (double) spherical->pitch / (1 << 16));
    if (spherical->roll)
        FUNC11(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPOSEROLL,
                       (double) spherical->roll  / (1 << 16));

end:
    projection_size = FUNC3(dyn_cp, &projection_ptr);
    if (projection_size) {
        ebml_master projection = FUNC13(pb,
                                                   MATROSKA_ID_VIDEOPROJECTION,
                                                   projection_size);
        FUNC7(pb, projection_ptr, projection_size);
        FUNC8(pb, projection);
    }
    FUNC0(&projection_ptr);

    return 0;
}