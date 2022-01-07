
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int list_filter; int * file; int * encoder_level; int * encoder_profile; int * encoder_options; int * encoder_tune; int * encoder_preset; int metadata; int list_attachment; int list_audio; int list_chapter; int list_subtitle; int * json; } ;
typedef TYPE_1__ hb_job_t ;


 TYPE_1__* calloc (int,int) ;
 int hb_attachment_list_copy (int ) ;
 int hb_audio_list_copy (int ) ;
 int hb_chapter_list_copy (int ) ;
 int hb_filter_list_copy (int ) ;
 int hb_metadata_copy (int ) ;
 int hb_subtitle_list_copy (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 void* strdup (int *) ;

hb_job_t* hb_job_copy(hb_job_t * job)
{
    hb_job_t * job_copy;


    job_copy = calloc( sizeof( hb_job_t ), 1 );
    if (job_copy == ((void*)0))
        return ((void*)0);

    if (job->json != ((void*)0))
    {

        job_copy->json = strdup(job->json);
        return job_copy;
    }
    memcpy( job_copy, job, sizeof( hb_job_t ) );

    job_copy->list_subtitle = hb_subtitle_list_copy( job->list_subtitle );
    job_copy->list_chapter = hb_chapter_list_copy( job->list_chapter );
    job_copy->list_audio = hb_audio_list_copy( job->list_audio );
    job_copy->list_attachment = hb_attachment_list_copy( job->list_attachment );
    job_copy->metadata = hb_metadata_copy( job->metadata );

    if (job->encoder_preset != ((void*)0))
        job_copy->encoder_preset = strdup(job->encoder_preset);
    if (job->encoder_tune != ((void*)0))
        job_copy->encoder_tune = strdup(job->encoder_tune);
    if (job->encoder_options != ((void*)0))
        job_copy->encoder_options = strdup(job->encoder_options);
    if (job->encoder_profile != ((void*)0))
        job_copy->encoder_profile = strdup(job->encoder_profile);
    if (job->encoder_level != ((void*)0))
        job_copy->encoder_level = strdup(job->encoder_level);
    if (job->file != ((void*)0))
        job_copy->file = strdup(job->file);

    job_copy->list_filter = hb_filter_list_copy( job->list_filter );

    return job_copy;
}
