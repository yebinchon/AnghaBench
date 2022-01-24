#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int projection; int yaw; int pitch; int roll; int bound_top; int bound_bottom; int bound_left; int bound_right; int padding; } ;
typedef  TYPE_1__ AVSphericalMapping ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVFMT_FLAG_BITEXACT ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  AV_SPHERICAL_CUBEMAP 130 
#define  AV_SPHERICAL_EQUIRECTANGULAR 129 
#define  AV_SPHERICAL_EQUIRECTANGULAR_TILE 128 
 char* LIBAVFORMAT_IDENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVIOContext *pb, AVSphericalMapping *spherical_mapping)
{
    int64_t sv3d_pos, svhd_pos, proj_pos;
    const char* metadata_source = s->flags & AVFMT_FLAG_BITEXACT ? "Lavf" : LIBAVFORMAT_IDENT;

    if (spherical_mapping->projection != AV_SPHERICAL_EQUIRECTANGULAR &&
        spherical_mapping->projection != AV_SPHERICAL_EQUIRECTANGULAR_TILE &&
        spherical_mapping->projection != AV_SPHERICAL_CUBEMAP) {
        FUNC0(s, AV_LOG_WARNING, "Unsupported projection %d. sv3d not written.\n", spherical_mapping->projection);
        return 0;
    }

    sv3d_pos = FUNC2(pb);
    FUNC3(pb, 0);  /* size */
    FUNC4(pb, "sv3d");

    svhd_pos = FUNC2(pb);
    FUNC3(pb, 0);  /* size */
    FUNC4(pb, "svhd");
    FUNC3(pb, 0); /* version = 0 & flags = 0 */
    FUNC1(pb, metadata_source);
    FUNC5(pb, svhd_pos);

    proj_pos = FUNC2(pb);
    FUNC3(pb, 0); /* size */
    FUNC4(pb, "proj");

    FUNC3(pb, 24); /* size */
    FUNC4(pb, "prhd");
    FUNC3(pb, 0); /* version = 0 & flags = 0 */
    FUNC3(pb, spherical_mapping->yaw);
    FUNC3(pb, spherical_mapping->pitch);
    FUNC3(pb, spherical_mapping->roll);

    switch (spherical_mapping->projection) {
    case AV_SPHERICAL_EQUIRECTANGULAR:
    case AV_SPHERICAL_EQUIRECTANGULAR_TILE:
        FUNC3(pb, 28);    /* size */
        FUNC4(pb, "equi");
        FUNC3(pb, 0); /* version = 0 & flags = 0 */
        FUNC3(pb, spherical_mapping->bound_top);
        FUNC3(pb, spherical_mapping->bound_bottom);
        FUNC3(pb, spherical_mapping->bound_left);
        FUNC3(pb, spherical_mapping->bound_right);
        break;
    case AV_SPHERICAL_CUBEMAP:
        FUNC3(pb, 20);    /* size */
        FUNC4(pb, "cbmp");
        FUNC3(pb, 0); /* version = 0 & flags = 0 */
        FUNC3(pb, 0); /* layout */
        FUNC3(pb, spherical_mapping->padding); /* padding */
        break;
    }
    FUNC5(pb, proj_pos);

    return FUNC5(pb, sv3d_pos);
}