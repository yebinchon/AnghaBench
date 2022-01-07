
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_24__ {int list_work; int track; TYPE_7__* mux; TYPE_8__* job; } ;
typedef TYPE_4__ hb_work_private_t ;
struct TYPE_25__ {int name; int thread; int done; int fifo_in; TYPE_4__* private_data; } ;
typedef TYPE_5__ hb_work_object_t ;
struct TYPE_23__ {scalar_t__ dest; } ;
struct TYPE_26__ {int mux_data; int fifo_out; TYPE_3__ config; } ;
typedef TYPE_6__ hb_subtitle_t ;
struct TYPE_27__ {int interleave; int pts; int ntracks; TYPE_10__* m; int mutex; void* allEof; void* allRdy; void* eof; void* rdy; } ;
typedef TYPE_7__ hb_mux_t ;
struct TYPE_21__ {int num; scalar_t__ den; } ;
struct TYPE_28__ {scalar_t__ pass_id; int mux; int* die; int h; int list_subtitle; int list_audio; int mux_data; int fifo_mpeg4; TYPE_1__ vrate; int * done_error; } ;
typedef TYPE_8__ hb_job_t ;
struct TYPE_22__ {int mux_data; int fifo_out; } ;
struct TYPE_29__ {TYPE_2__ priv; } ;
typedef TYPE_9__ hb_audio_t ;
struct TYPE_20__ {int (* init ) (TYPE_10__*) ;} ;


 int HB_ERROR_INIT ;
 int HB_LOW_PRIORITY ;



 scalar_t__ HB_PASS_ENCODE ;
 scalar_t__ HB_PASS_ENCODE_2ND ;
 scalar_t__ PASSTHRUSUB ;
 int WORK_MUX ;
 int add_mux_track (TYPE_7__*,int ,int) ;
 void* calloc (int,int) ;
 int free (TYPE_7__*) ;
 void* hb_bitvec_new (int) ;
 int hb_error (char*) ;
 TYPE_5__* hb_get_work (int ,int ) ;
 int hb_list_add (int ,TYPE_5__*) ;
 int hb_list_count (int ) ;
 int hb_list_init () ;
 void* hb_list_item (int ,int) ;
 int hb_lock_init () ;
 TYPE_10__* hb_mux_avformat_init (TYPE_8__*) ;
 int hb_thread_init (int ,int ,TYPE_5__*,int ) ;
 int hb_work_loop ;
 int stub1 (TYPE_10__*) ;

__attribute__((used)) static int muxInit( hb_work_object_t * muxer, hb_job_t * job )
{
    muxer->private_data = calloc( sizeof( hb_work_private_t ), 1 );
    hb_work_private_t * pv = muxer->private_data;

    hb_mux_t * mux = calloc( sizeof( hb_mux_t ), 1 );
    int i;
    hb_work_object_t * w;


    if( job->pass_id == HB_PASS_ENCODE || job->pass_id == HB_PASS_ENCODE_2ND )
    {
        switch( job->mux )
        {
            case 129:
            case 130:
            case 128:
                mux->m = hb_mux_avformat_init( job );
                break;
            default:
                hb_error( "No muxer selected, exiting" );
                free(mux);
                *job->done_error = HB_ERROR_INIT;
                *job->die = 1;
                return -1;
        }
    }

    pv->list_work = hb_list_init();



    int bit_vec_size = 1 + hb_list_count(job->list_audio) +
                           hb_list_count(job->list_subtitle);
    mux->rdy = hb_bitvec_new(bit_vec_size);
    mux->eof = hb_bitvec_new(bit_vec_size);
    mux->allRdy = hb_bitvec_new(bit_vec_size);
    mux->allEof = hb_bitvec_new(bit_vec_size);

    mux->mutex = hb_lock_init();




    mux->interleave = 90000. * (double)job->vrate.den / job->vrate.num;
    mux->pts = mux->interleave;

    if( job->pass_id == HB_PASS_ENCODE || job->pass_id == HB_PASS_ENCODE_2ND )
    {

        if( mux->m )
        {
            mux->m->init( mux->m );
        }
    }


    pv->job = job;
    pv->mux = mux;
    pv->track = mux->ntracks;
    muxer->fifo_in = job->fifo_mpeg4;
    add_mux_track( mux, job->mux_data, 1 );

    for (i = 0; i < hb_list_count(job->list_audio); i++)
    {
        hb_audio_t *audio = hb_list_item( job->list_audio, i );

        w = hb_get_work(job->h, WORK_MUX);
        w->private_data = calloc(sizeof(hb_work_private_t), 1);
        w->private_data->job = job;
        w->private_data->mux = mux;
        w->private_data->track = mux->ntracks;
        w->fifo_in = audio->priv.fifo_out;
        add_mux_track(mux, audio->priv.mux_data, 1);
        hb_list_add(pv->list_work, w);
    }

    for (i = 0; i < hb_list_count(job->list_subtitle); i++)
    {
        hb_subtitle_t *subtitle = hb_list_item( job->list_subtitle, i );

        if (subtitle->config.dest != PASSTHRUSUB)
            continue;

        w = hb_get_work(job->h, WORK_MUX);
        w->private_data = calloc(sizeof(hb_work_private_t), 1);
        w->private_data->job = job;
        w->private_data->mux = mux;
        w->private_data->track = mux->ntracks;
        w->fifo_in = subtitle->fifo_out;
        add_mux_track(mux, subtitle->mux_data, 0);
        hb_list_add(pv->list_work, w);
    }


    for (i = 0; i < hb_list_count(pv->list_work); i++)
    {
        w = hb_list_item(pv->list_work, i);
        w->done = muxer->done;
        w->thread = hb_thread_init(w->name, hb_work_loop, w, HB_LOW_PRIORITY);
    }
    return 0;
}
