
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_11__ ;


struct TYPE_25__ {int count; TYPE_6__* list; } ;
struct TYPE_24__ {int count; TYPE_2__* list; } ;
struct TYPE_26__ {scalar_t__ reg_desc; TYPE_4__ pes; scalar_t__ need_keyframe; TYPE_3__ ts; } ;
typedef TYPE_5__ hb_stream_t ;
struct TYPE_27__ {scalar_t__ stream_kind; scalar_t__ probe_next_size; TYPE_7__* probe_buf; int stream_id_ext; int stream_id; int codec_name; void* codec_param; void* codec; } ;
typedef TYPE_6__ hb_pes_stream_t ;
struct TYPE_22__ {int id; } ;
struct TYPE_28__ {TYPE_1__ s; } ;
typedef TYPE_7__ hb_buffer_t ;
struct TYPE_23__ {int pid; int pes_list; } ;
struct TYPE_21__ {void* codec_param; void* codec; } ;


 scalar_t__ A ;
 void* AV_CODEC_ID_AC3 ;
 void* AV_CODEC_ID_DTS ;
 void* AV_CODEC_ID_EAC3 ;
 void* AV_CODEC_ID_PCM_BLURAY ;
 void* AV_CODEC_ID_TRUEHD ;
 void* HB_ACODEC_AC3 ;
 void* HB_ACODEC_DCA ;
 void* HB_ACODEC_DCA_HD ;
 void* HB_ACODEC_FFEAC3 ;
 void* HB_ACODEC_FFMPEG ;
 void* HB_ACODEC_FFTRUEHD ;
 int HB_SUBSTREAM_BD_AC3 ;
 int HB_SUBSTREAM_BD_DTS ;
 int HB_SUBSTREAM_BD_TRUEHD ;
 void* N ;
 scalar_t__ S ;
 scalar_t__ STR4_TO_UINT32 (char*) ;
 scalar_t__ U ;
 scalar_t__ V ;
 int do_probe (TYPE_5__*,TYPE_6__*,TYPE_7__*) ;
 int hb_buffer_close (TYPE_7__**) ;
 int hb_log (char*,int,char*,...) ;
 int hb_stream_seek (TYPE_5__*,double) ;
 TYPE_7__* hb_ts_stream_decode (TYPE_5__*) ;
 int index_of_id (TYPE_5__*,int ) ;
 TYPE_11__* st2codec ;
 scalar_t__ ts_stream_kind (TYPE_5__*,int) ;
 int ts_stream_type (TYPE_5__*,int) ;
 int update_ts_streams (TYPE_5__*,int,int ,int,scalar_t__,int*) ;

__attribute__((used)) static void hb_ts_resolve_pid_types(hb_stream_t *stream)
{
    int ii, probe = 0;

    for ( ii = 0; ii < stream->ts.count; ii++ )
    {
        int pid = stream->ts.list[ii].pid;
        int stype = ts_stream_type( stream, ii );
        int pes_idx;

        if ( stype == 0x80 &&
             stream->reg_desc == STR4_TO_UINT32("HDMV") )
        {



            update_ts_streams( stream, pid, 0, stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_FFMPEG;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_PCM_BLURAY;
            continue;
        }







        if ( stype == 0x83 &&
             stream->reg_desc == STR4_TO_UINT32("HDMV") )
        {


            update_ts_streams( stream, pid, HB_SUBSTREAM_BD_AC3,
                               stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_AC3;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_AC3;

            update_ts_streams( stream, pid, HB_SUBSTREAM_BD_TRUEHD,
                               stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_FFTRUEHD;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_TRUEHD;
            continue;
        }
        if ( ( stype == 0x84 || stype == 0xa1 ) &&
             stream->reg_desc == STR4_TO_UINT32("HDMV") )
        {



            update_ts_streams( stream, pid, 0, stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_FFEAC3;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_EAC3;
            continue;
        }





        if ( stype == 0x85 &&
             stream->reg_desc == STR4_TO_UINT32("HDMV") )
        {





            update_ts_streams( stream, pid, HB_SUBSTREAM_BD_DTS,
                               stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_DCA;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_DTS;

            update_ts_streams( stream, pid, 0, stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_DCA_HD;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_DTS;
            continue;
        }
        if ( stype == 0x86 &&
             stream->reg_desc == STR4_TO_UINT32("HDMV") )
        {


            update_ts_streams( stream, pid, HB_SUBSTREAM_BD_DTS,
                               stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_DCA;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_DTS;

            update_ts_streams( stream, pid, 0, stype, A, &pes_idx );
            stream->pes.list[pes_idx].codec = HB_ACODEC_DCA_HD;
            stream->pes.list[pes_idx].codec_param = AV_CODEC_ID_DTS;
            continue;
        }


        if ( stype != 0 &&
             ( ts_stream_kind( stream, ii ) == A ||
               ts_stream_kind( stream, ii ) == S ||
               ts_stream_kind( stream, ii ) == V ) )
        {




            pes_idx = stream->ts.list[ii].pes_list;
            stream->pes.list[pes_idx].codec = st2codec[stype].codec;
            stream->pes.list[pes_idx].codec_param = st2codec[stype].codec_param;
            continue;
        }

        if ( ts_stream_kind( stream, ii ) == U )
        {
            probe++;
        }
    }


    hb_stream_seek( stream, 0.0 );
    stream->need_keyframe = 0;

    hb_buffer_t *buf;

    if ( probe )
        hb_log("Probing %d unknown stream%s", probe, probe > 1 ? "s" : "" );

    while ( probe && ( buf = hb_ts_stream_decode( stream ) ) != ((void*)0) )
    {
        int idx, result;
        idx = index_of_id( stream, buf->s.id );

        if (idx < 0 || stream->pes.list[idx].stream_kind != U )
        {
            hb_buffer_close(&buf);
            continue;
        }

        hb_pes_stream_t *pes = &stream->pes.list[idx];

        result = do_probe(stream, pes, buf);
        if (result < 0)
        {
            hb_log("    Probe: Unsupported stream %s. stream id 0x%x-0x%x",
                    pes->codec_name, pes->stream_id, pes->stream_id_ext);
            pes->stream_kind = N;
            probe--;
        }
        else if (result && pes->stream_kind != U)
        {
            hb_log("    Probe: Found stream %s. stream id 0x%x-0x%x",
                    pes->codec_name, pes->stream_id, pes->stream_id_ext);
            probe--;
        }
        hb_buffer_close(&buf);
    }


    for ( ii = 0; ii < stream->pes.count; ii++ )
    {
        if ( stream->pes.list[ii].stream_kind == U )
            stream->pes.list[ii].stream_kind = N;
        hb_buffer_close( &stream->pes.list[ii].probe_buf );
        stream->pes.list[ii].probe_next_size = 0;
    }
}
