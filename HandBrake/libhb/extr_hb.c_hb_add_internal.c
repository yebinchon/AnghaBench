
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int source; int iso639_2; } ;
typedef TYPE_5__ hb_subtitle_t ;
typedef int hb_list_t ;
struct TYPE_19__ {int force; } ;
struct TYPE_21__ {int * list_filter; int * h; int * file; int * encoder_level; int * encoder_profile; int * encoder_options; int * encoder_tune; int * encoder_preset; int * metadata; int * list_attachment; int * list_audio; int * list_chapter; int * list_subtitle; TYPE_4__ select_subtitle_config; TYPE_3__* title; scalar_t__ indepth_scan; int * json; } ;
typedef TYPE_6__ hb_job_t ;
typedef int hb_handle_t ;
struct TYPE_16__ {int iso639_2; } ;
struct TYPE_17__ {TYPE_1__ lang; } ;
struct TYPE_22__ {TYPE_2__ config; } ;
typedef TYPE_7__ hb_audio_t ;
typedef int audio_lang ;
struct TYPE_18__ {int * list_subtitle; } ;


 TYPE_6__* calloc (int,int) ;
 int * hb_attachment_list_copy (int *) ;
 int * hb_audio_list_copy (int *) ;
 int * hb_chapter_list_copy (int *) ;
 int * hb_filter_list_copy (int *) ;
 int hb_job_close (TYPE_6__**) ;
 int hb_list_add (int *,TYPE_6__*) ;
 int hb_list_count (int *) ;
 int * hb_list_init () ;
 void* hb_list_item (int *,int) ;
 int hb_log (char*) ;
 int * hb_metadata_copy (int *) ;
 scalar_t__ hb_subtitle_can_force (int ) ;
 TYPE_6__* hb_subtitle_copy (TYPE_5__*) ;
 int * hb_subtitle_list_copy (int *) ;
 int memcpy (TYPE_6__*,TYPE_6__*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 void* strdup (int *) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void hb_add_internal( hb_handle_t * h, hb_job_t * job, hb_list_t *list_pass )
{
    hb_job_t * job_copy;
    hb_audio_t * audio;
    hb_subtitle_t * subtitle;
    int i;
    char audio_lang[4];


    job_copy = calloc( sizeof( hb_job_t ), 1 );
    memcpy(job_copy, job, sizeof(hb_job_t));
    job_copy->json = ((void*)0);
    job_copy->encoder_preset = ((void*)0);
    job_copy->encoder_tune = ((void*)0);
    job_copy->encoder_profile = ((void*)0);
    job_copy->encoder_level = ((void*)0);
    job_copy->encoder_options = ((void*)0);
    job_copy->file = ((void*)0);
    job_copy->list_chapter = ((void*)0);
    job_copy->list_audio = ((void*)0);
    job_copy->list_subtitle = ((void*)0);
    job_copy->list_filter = ((void*)0);
    job_copy->list_attachment = ((void*)0);
    job_copy->metadata = ((void*)0);







    memset( audio_lang, 0, sizeof( audio_lang ) );

    if( job->indepth_scan )
    {



        for( i = 0; i < hb_list_count( job->list_audio ); i++ )
        {
            if( ( audio = hb_list_item( job->list_audio, i ) ) )
            {
                strncpy( audio_lang, audio->config.lang.iso639_2, sizeof( audio_lang ) );
                break;
            }
        }





        job_copy->list_subtitle = hb_list_init();

        for( i = 0; i < hb_list_count( job->title->list_subtitle ); i++ )
        {
            subtitle = hb_list_item( job->title->list_subtitle, i );
            if( strcmp( subtitle->iso639_2, audio_lang ) == 0 &&
                hb_subtitle_can_force( subtitle->source ) )
            {





                hb_list_add( job_copy->list_subtitle,
                             hb_subtitle_copy( subtitle ) );
            }
        }
        int count = hb_list_count(job_copy->list_subtitle);
        if (count == 0 ||
            (count == 1 && !job_copy->select_subtitle_config.force))
        {
            hb_log("Skipping subtitle scan.  No suitable subtitle tracks.");
            hb_job_close(&job_copy);
            return;
        }
    }
    else
    {

        job_copy->list_subtitle = hb_subtitle_list_copy( job->list_subtitle );
    }

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

    job_copy->h = h;


    job_copy->list_filter = hb_filter_list_copy( job->list_filter );


    hb_list_add( list_pass, job_copy );
}
