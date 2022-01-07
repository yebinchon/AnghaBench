
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_subtitle_t ;
struct TYPE_3__ {void* encoder_preset; void* encoder_tune; void* encoder_options; void* encoder_profile; void* encoder_level; void* file; int metadata; int list_attachment; int list_filter; int list_subtitle; int list_audio; int list_chapter; int * json; } ;
typedef TYPE_1__ hb_job_t ;
typedef int hb_filter_object_t ;
typedef int hb_chapter_t ;
typedef int hb_audio_t ;
typedef int hb_attachment_t ;


 int free (void*) ;
 int hb_attachment_close (int **) ;
 int hb_audio_close (int **) ;
 int hb_chapter_close (int **) ;
 int hb_filter_close (int **) ;
 int hb_list_close (int *) ;
 int * hb_list_item (int ,int ) ;
 int hb_list_rem (int ,int *) ;
 int hb_metadata_close (int *) ;
 int hb_subtitle_close (int **) ;

__attribute__((used)) static void job_clean( hb_job_t * job )
{
    if (job)
    {
        hb_chapter_t *chapter;
        hb_audio_t *audio;
        hb_subtitle_t *subtitle;
        hb_filter_object_t *filter;
        hb_attachment_t *attachment;

        free((void*)job->json);
        job->json = ((void*)0);
        free(job->encoder_preset);
        job->encoder_preset = ((void*)0);
        free(job->encoder_tune);
        job->encoder_tune = ((void*)0);
        free(job->encoder_options);
        job->encoder_options = ((void*)0);
        free(job->encoder_profile);
        job->encoder_profile = ((void*)0);
        free(job->encoder_level);
        job->encoder_level = ((void*)0);
        free(job->file);
        job->file = ((void*)0);


        while( ( chapter = hb_list_item( job->list_chapter, 0 ) ) )
        {
            hb_list_rem( job->list_chapter, chapter );
            hb_chapter_close( &chapter );
        }
        hb_list_close( &job->list_chapter );


        while( ( audio = hb_list_item( job->list_audio, 0 ) ) )
        {
            hb_list_rem( job->list_audio, audio );
            hb_audio_close( &audio );
        }
        hb_list_close( &job->list_audio );


        while( ( subtitle = hb_list_item( job->list_subtitle, 0 ) ) )
        {
            hb_list_rem( job->list_subtitle, subtitle );
            hb_subtitle_close( &subtitle );
        }
        hb_list_close( &job->list_subtitle );


        while( ( filter = hb_list_item( job->list_filter, 0 ) ) )
        {
            hb_list_rem( job->list_filter, filter );
            hb_filter_close( &filter );
        }
        hb_list_close( &job->list_filter );


        while( ( attachment = hb_list_item( job->list_attachment, 0 ) ) )
        {
            hb_list_rem( job->list_attachment, attachment );
            hb_attachment_close( &attachment );
        }
        hb_list_close( &job->list_attachment );


        hb_metadata_close( &job->metadata );
    }
}
