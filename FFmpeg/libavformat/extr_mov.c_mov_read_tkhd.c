
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rotate_buf ;
typedef int const int64_t ;
typedef int int32_t ;
struct TYPE_9__ {int id; int sample_aspect_ratio; int metadata; int disposition; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int const** movie_display_matrix; TYPE_1__* fc; } ;
struct TYPE_7__ {int width; int height; int* display_matrix; } ;
struct TYPE_6__ {int nb_streams; TYPE_4__** streams; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ MOVContext ;
typedef int MOVAtom ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_DISPOSITION_DEFAULT ;
 int ENOMEM ;
 int INT_MAX ;
 int IS_MATRIX_IDENT (int**) ;
 int MOV_TKHD_FLAG_ENABLED ;
 int av_d2q (double,int ) ;
 int av_dict_set (int *,char*,char*,int ) ;
 double av_display_rotation_get (int*) ;
 int av_freep (int**) ;
 int* av_malloc (int) ;
 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int avio_rb24 (int *) ;
 int avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 double fabs (double) ;
 double hypot (int,int) ;
 int isnan (double) ;
 int snprintf (char*,int,char*,double) ;

__attribute__((used)) static int mov_read_tkhd(MOVContext *c, AVIOContext *pb, MOVAtom atom)
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



    if (st->id != -1)
        return AVERROR_INVALIDDATA;

    version = avio_r8(pb);
    flags = avio_rb24(pb);
    st->disposition |= (flags & MOV_TKHD_FLAG_ENABLED) ? AV_DISPOSITION_DEFAULT : 0;

    if (version == 1) {
        avio_rb64(pb);
        avio_rb64(pb);
    } else {
        avio_rb32(pb);
        avio_rb32(pb);
    }
    st->id = (int)avio_rb32(pb);
    avio_rb32(pb);


    (version == 1) ? avio_rb64(pb) : avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);

    avio_rb16(pb);
    avio_rb16(pb);
    avio_rb16(pb);
    avio_rb16(pb);





    for (i = 0; i < 3; i++) {
        display_matrix[i][0] = avio_rb32(pb);
        display_matrix[i][1] = avio_rb32(pb);
        display_matrix[i][2] = avio_rb32(pb);
    }

    width = avio_rb32(pb);
    height = avio_rb32(pb);
    sc->width = width >> 16;
    sc->height = height >> 16;


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


    if (!IS_MATRIX_IDENT(res_display_matrix)) {
        double rotate;

        av_freep(&sc->display_matrix);
        sc->display_matrix = av_malloc(sizeof(int32_t) * 9);
        if (!sc->display_matrix)
            return AVERROR(ENOMEM);

        for (i = 0; i < 3; i++)
            for (j = 0; j < 3; j++)
                sc->display_matrix[i * 3 + j] = res_display_matrix[i][j];
    }



    if (width && height && sc->display_matrix) {
        double disp_transform[2];

        for (i = 0; i < 2; i++)
            disp_transform[i] = hypot(sc->display_matrix[0 + i],
                                      sc->display_matrix[3 + i]);

        if (disp_transform[0] > 0 && disp_transform[1] > 0 &&
            disp_transform[0] < (1<<24) && disp_transform[1] < (1<<24) &&
            fabs((disp_transform[0] / disp_transform[1]) - 1.0) > 0.01)
            st->sample_aspect_ratio = av_d2q(
                disp_transform[0] / disp_transform[1],
                INT_MAX);
    }
    return 0;
}
