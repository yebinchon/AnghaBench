#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rotate_buf ;
typedef  int const int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_9__ {int id; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  metadata; int /*<<< orphan*/  disposition; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int const** movie_display_matrix; TYPE_1__* fc; } ;
struct TYPE_7__ {int width; int height; int* display_matrix; } ;
struct TYPE_6__ {int nb_streams; TYPE_4__** streams; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_DISPOSITION_DEFAULT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int**) ; 
 int MOV_TKHD_FLAG_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 double FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int**) ; 
 int* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 double FUNC12 (double) ; 
 double FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (double) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,double) ; 

__attribute__((used)) static int FUNC16(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int i, j, e;
    int width;
    int height;
    int display_matrix[3][3];
    int res_display_matrix[3][3] = { { 0 } };
    AVStream *st;
    MOVStreamContext *sc;
    int version;
    int flags;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    // Each stream (trak) should have exactly 1 tkhd. This catches bad files and
    // avoids corrupting AVStreams mapped to an earlier tkhd.
    if (st->id != -1)
        return AVERROR_INVALIDDATA;

    version = FUNC7(pb);
    flags = FUNC9(pb);
    st->disposition |= (flags & MOV_TKHD_FLAG_ENABLED) ? AV_DISPOSITION_DEFAULT : 0;

    if (version == 1) {
        FUNC11(pb);
        FUNC11(pb);
    } else {
        FUNC10(pb); /* creation time */
        FUNC10(pb); /* modification time */
    }
    st->id = (int)FUNC10(pb); /* track id (NOT 0 !)*/
    FUNC10(pb); /* reserved */

    /* highlevel (considering edits) duration in movie timebase */
    (version == 1) ? FUNC11(pb) : FUNC10(pb);
    FUNC10(pb); /* reserved */
    FUNC10(pb); /* reserved */

    FUNC8(pb); /* layer */
    FUNC8(pb); /* alternate group */
    FUNC8(pb); /* volume */
    FUNC8(pb); /* reserved */

    //read in the display matrix (outlined in ISO 14496-12, Section 6.2.2)
    // they're kept in fixed point format through all calculations
    // save u,v,z to store the whole matrix in the AV_PKT_DATA_DISPLAYMATRIX
    // side data, but the scale factor is not needed to calculate aspect ratio
    for (i = 0; i < 3; i++) {
        display_matrix[i][0] = FUNC10(pb);   // 16.16 fixed point
        display_matrix[i][1] = FUNC10(pb);   // 16.16 fixed point
        display_matrix[i][2] = FUNC10(pb);   //  2.30 fixed point
    }

    width = FUNC10(pb);       // 16.16 fixed point track width
    height = FUNC10(pb);      // 16.16 fixed point track height
    sc->width = width >> 16;
    sc->height = height >> 16;

    // apply the moov display matrix (after the tkhd one)
    for (i = 0; i < 3; i++) {
        const int sh[3] = { 16, 16, 30 };
        for (j = 0; j < 3; j++) {
            for (e = 0; e < 3; e++) {
                res_display_matrix[i][j] +=
                    ((int64_t) display_matrix[i][e] *
                     c->movie_display_matrix[e][j]) >> sh[e];
            }
        }
    }

    // save the matrix when it is not the default identity
    if (!FUNC1(res_display_matrix)) {
        double rotate;

        FUNC5(&sc->display_matrix);
        sc->display_matrix = FUNC6(sizeof(int32_t) * 9);
        if (!sc->display_matrix)
            return FUNC0(ENOMEM);

        for (i = 0; i < 3; i++)
            for (j = 0; j < 3; j++)
                sc->display_matrix[i * 3 + j] = res_display_matrix[i][j];

#if FF_API_OLD_ROTATE_API
        rotate = av_display_rotation_get(sc->display_matrix);
        if (!isnan(rotate)) {
            char rotate_buf[64];
            rotate = -rotate;
            if (rotate < 0) // for backward compatibility
                rotate += 360;
            snprintf(rotate_buf, sizeof(rotate_buf), "%g", rotate);
            av_dict_set(&st->metadata, "rotate", rotate_buf, 0);
        }
#endif
    }

    // transform the display width/height according to the matrix
    // to keep the same scale, use [width height 1<<16]
    if (width && height && sc->display_matrix) {
        double disp_transform[2];

        for (i = 0; i < 2; i++)
            disp_transform[i] = FUNC13(sc->display_matrix[0 + i],
                                      sc->display_matrix[3 + i]);

        if (disp_transform[0] > 0       && disp_transform[1] > 0 &&
            disp_transform[0] < (1<<24) && disp_transform[1] < (1<<24) &&
            FUNC12((disp_transform[0] / disp_transform[1]) - 1.0) > 0.01)
            st->sample_aspect_ratio = FUNC2(
                disp_transform[0] / disp_transform[1],
                INT_MAX);
    }
    return 0;
}