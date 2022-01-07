
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uiGeo ;
struct TYPE_19__ {int par; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_17__ {int video_decode_support; int metadata; int list_attachment; int color_range; int color_matrix; int color_transfer; int color_prim; int vrate; int crop; TYPE_6__ geometry; int list_chapter; } ;
typedef TYPE_4__ hb_title_t ;
struct TYPE_15__ {scalar_t__ is_init_done; } ;
struct TYPE_16__ {int decode; int async_depth; TYPE_2__ enc_info; } ;
struct TYPE_18__ {int chapter_start; int vbitrate; TYPE_3__ qsv; int metadata; int list_attachment; void* list_filter; void* list_subtitle; void* list_audio; int mux; int color_matrix_override; int color_transfer_override; int color_prim_override; int color_range; int color_matrix; int color_transfer; int color_prim; int pix_fmt; int vrate; int pass_id; scalar_t__ twopass; int vquality; int vcodec; int par; scalar_t__ height; scalar_t__ width; scalar_t__* crop; int list_chapter; int chapter_end; TYPE_4__* title; } ;
typedef TYPE_5__ hb_job_t ;
typedef TYPE_6__ hb_geometry_t ;
struct TYPE_14__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_20__ {int keep; int mode; scalar_t__* crop; TYPE_1__ geometry; } ;
typedef TYPE_7__ hb_geometry_settings_t ;


 int AV_PIX_FMT_YUV420P ;
 int HB_ANAMORPHIC_NONE ;
 int HB_COLR_MAT_UNDEF ;
 int HB_COLR_PRI_UNDEF ;
 int HB_COLR_TRA_UNDEF ;
 int HB_DECODE_SUPPORT_QSV ;
 int HB_INVALID_VIDEO_QUALITY ;
 int HB_KEEP_DISPLAY_ASPECT ;
 int HB_MUX_MP4 ;
 int HB_PASS_ENCODE ;
 int HB_QSV_ASYNC_DEPTH_DEFAULT ;
 int HB_VCODEC_FFMPEG_MPEG4 ;
 int hb_attachment_list_copy (int ) ;
 int hb_chapter_list_copy (int ) ;
 int hb_list_count (int ) ;
 void* hb_list_init () ;
 int hb_metadata_copy (int ) ;
 int hb_set_anamorphic_size2 (TYPE_6__*,TYPE_7__*,TYPE_6__*) ;
 int memcpy (scalar_t__*,int ,int) ;
 int memset (TYPE_7__*,int ,int) ;

__attribute__((used)) static void job_setup(hb_job_t * job, hb_title_t * title)
{
    if ( job == ((void*)0) || title == ((void*)0) )
        return;

    job->title = title;


    job->chapter_start = 1;
    job->chapter_end = hb_list_count( title->list_chapter );
    job->list_chapter = hb_chapter_list_copy( title->list_chapter );


    memcpy( job->crop, title->crop, 4 * sizeof( int ) );


    hb_geometry_t resultGeo, srcGeo;
    hb_geometry_settings_t uiGeo;

    srcGeo = title->geometry;

    memset(&uiGeo, 0, sizeof(uiGeo));
    memcpy(uiGeo.crop, title->crop, 4 * sizeof( int ));
    uiGeo.geometry.width = srcGeo.width - uiGeo.crop[2] - uiGeo.crop[3];
    uiGeo.geometry.height = srcGeo.height - uiGeo.crop[0] - uiGeo.crop[1];
    uiGeo.mode = HB_ANAMORPHIC_NONE;
    uiGeo.keep = HB_KEEP_DISPLAY_ASPECT;

    hb_set_anamorphic_size2(&srcGeo, &uiGeo, &resultGeo);
    job->width = resultGeo.width;
    job->height = resultGeo.height;
    job->par = resultGeo.par;

    job->vcodec = HB_VCODEC_FFMPEG_MPEG4;
    job->vquality = HB_INVALID_VIDEO_QUALITY;
    job->vbitrate = 1000;
    job->twopass = 0;
    job->pass_id = HB_PASS_ENCODE;
    job->vrate = title->vrate;

    job->pix_fmt = AV_PIX_FMT_YUV420P;
    job->color_prim = title->color_prim;
    job->color_transfer = title->color_transfer;
    job->color_matrix = title->color_matrix;
    job->color_range = title->color_range;
    job->color_prim_override = HB_COLR_PRI_UNDEF;
    job->color_transfer_override = HB_COLR_TRA_UNDEF;
    job->color_matrix_override = HB_COLR_MAT_UNDEF;

    job->mux = HB_MUX_MP4;

    job->list_audio = hb_list_init();
    job->list_subtitle = hb_list_init();
    job->list_filter = hb_list_init();

    job->list_attachment = hb_attachment_list_copy( title->list_attachment );
    job->metadata = hb_metadata_copy( title->metadata );







}
