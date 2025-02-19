
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct TYPE_35__ {int log_ctx; } ;
struct TYPE_34__ {int data_size; int type; TYPE_1__* content; int * data; int data_ref; } ;
struct TYPE_33__ {int data_size; int data_bit_start; int data; int data_ref; int header; } ;
typedef TYPE_1__ H264RawSlice ;
typedef int H264RawSPSExtension ;
typedef TYPE_1__ H264RawSPS ;
typedef int H264RawSEI ;
typedef TYPE_1__ H264RawPPS ;
typedef int H264RawNALUnitHeader ;
typedef int H264RawFiller ;
typedef int H264RawAUD ;
typedef int GetBitContext ;
typedef TYPE_4__ CodedBitstreamUnit ;
typedef TYPE_5__ CodedBitstreamContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int ENOMEM ;
 int ENOSYS ;
 int av_buffer_ref (int ) ;
 int av_log (int ,int ,char*,int) ;
 int cbs_h264_free_pps ;
 int cbs_h264_free_sei ;
 int cbs_h264_free_slice ;
 int cbs_h264_read_aud (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_read_end_of_sequence (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_read_end_of_stream (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_read_filler (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_read_pps (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_read_sei (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_read_slice_header (TYPE_5__*,int *,int *) ;
 int cbs_h264_read_sps (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_read_sps_extension (TYPE_5__*,int *,TYPE_1__*) ;
 int cbs_h264_replace_pps (TYPE_5__*,TYPE_4__*) ;
 int cbs_h264_replace_sps (TYPE_5__*,TYPE_4__*) ;
 int ff_cbs_alloc_unit_content (TYPE_5__*,TYPE_4__*,int,int *) ;
 int get_bits_count (int *) ;
 int init_get_bits (int *,int *,int) ;
 int stub1 (TYPE_5__*,int *,TYPE_1__*) ;

__attribute__((used)) static int cbs_h264_read_nal_unit(CodedBitstreamContext *ctx,
                                  CodedBitstreamUnit *unit)
{
    GetBitContext gbc;
    int err;

    err = init_get_bits(&gbc, unit->data, 8 * unit->data_size);
    if (err < 0)
        return err;

    switch (unit->type) {
    case 129:
        {
            H264RawSPS *sps;

            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(*sps), ((void*)0));
            if (err < 0)
                return err;
            sps = unit->content;

            err = cbs_h264_read_sps(ctx, &gbc, sps);
            if (err < 0)
                return err;

            err = cbs_h264_replace_sps(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case 128:
        {
            err = ff_cbs_alloc_unit_content(ctx, unit,
                                            sizeof(H264RawSPSExtension),
                                            ((void*)0));
            if (err < 0)
                return err;

            err = cbs_h264_read_sps_extension(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case 132:
        {
            H264RawPPS *pps;

            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(*pps),
                                            &cbs_h264_free_pps);
            if (err < 0)
                return err;
            pps = unit->content;

            err = cbs_h264_read_pps(ctx, &gbc, pps);
            if (err < 0)
                return err;

            err = cbs_h264_replace_pps(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case 130:
    case 133:
    case 137:
        {
            H264RawSlice *slice;
            int pos, len;

            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(*slice),
                                            &cbs_h264_free_slice);
            if (err < 0)
                return err;
            slice = unit->content;

            err = cbs_h264_read_slice_header(ctx, &gbc, &slice->header);
            if (err < 0)
                return err;

            pos = get_bits_count(&gbc);
            len = unit->data_size;
            if (!unit->data[len - 1]) {
                int z;
                for (z = 0; z < len && !unit->data[len - z - 1]; z++);
                av_log(ctx->log_ctx, AV_LOG_DEBUG, "Deleted %d trailing zeroes "
                       "from slice data.\n", z);
                len -= z;
            }

            slice->data_size = len - pos / 8;
            slice->data_ref = av_buffer_ref(unit->data_ref);
            if (!slice->data_ref)
                return AVERROR(ENOMEM);
            slice->data = unit->data + pos / 8;
            slice->data_bit_start = pos % 8;
        }
        break;

    case 138:
        {
            err = ff_cbs_alloc_unit_content(ctx, unit,
                                            sizeof(H264RawAUD), ((void*)0));
            if (err < 0)
                return err;

            err = cbs_h264_read_aud(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case 131:
        {
            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(H264RawSEI),
                                            &cbs_h264_free_sei);
            if (err < 0)
                return err;

            err = cbs_h264_read_sei(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case 134:
        {
            err = ff_cbs_alloc_unit_content(ctx, unit,
                                            sizeof(H264RawFiller), ((void*)0));
            if (err < 0)
                return err;

            err = cbs_h264_read_filler(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case 136:
    case 135:
        {
            err = ff_cbs_alloc_unit_content(ctx, unit,
                                            sizeof(H264RawNALUnitHeader),
                                            ((void*)0));
            if (err < 0)
                return err;

            err = (unit->type == 136 ?
                   cbs_h264_read_end_of_sequence :
                   cbs_h264_read_end_of_stream)(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    default:
        return AVERROR(ENOSYS);
    }

    return 0;
}
