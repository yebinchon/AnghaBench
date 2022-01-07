
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_30__ {int log_ctx; } ;
struct TYPE_29__ {int data_size; int type; TYPE_1__* content; int * data; int data_ref; } ;
struct TYPE_28__ {int data_size; int data_bit_start; int data; int data_ref; int header; } ;
typedef TYPE_1__ H265RawVPS ;
typedef TYPE_1__ H265RawSlice ;
typedef TYPE_1__ H265RawSPS ;
typedef int H265RawSEI ;
typedef TYPE_1__ H265RawPPS ;
typedef int H265RawAUD ;
typedef int GetBitContext ;
typedef TYPE_5__ CodedBitstreamUnit ;
typedef TYPE_6__ CodedBitstreamContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int ENOMEM ;
 int ENOSYS ;
 int av_buffer_ref (int ) ;
 int av_log (int ,int ,char*,int) ;
 int cbs_h265_free_pps ;
 int cbs_h265_free_sei ;
 int cbs_h265_free_slice ;
 int cbs_h265_free_sps ;
 int cbs_h265_free_vps ;
 int cbs_h265_read_aud (TYPE_6__*,int *,TYPE_1__*) ;
 int cbs_h265_read_pps (TYPE_6__*,int *,TYPE_1__*) ;
 int cbs_h265_read_sei (TYPE_6__*,int *,TYPE_1__*,int) ;
 int cbs_h265_read_slice_segment_header (TYPE_6__*,int *,int *) ;
 int cbs_h265_read_sps (TYPE_6__*,int *,TYPE_1__*) ;
 int cbs_h265_read_vps (TYPE_6__*,int *,TYPE_1__*) ;
 int cbs_h265_replace_pps (TYPE_6__*,TYPE_5__*) ;
 int cbs_h265_replace_sps (TYPE_6__*,TYPE_5__*) ;
 int cbs_h265_replace_vps (TYPE_6__*,TYPE_5__*) ;
 int ff_cbs_alloc_unit_content (TYPE_6__*,TYPE_5__*,int,int *) ;
 int get_bits_count (int *) ;
 int init_get_bits (int *,int *,int) ;

__attribute__((used)) static int cbs_h265_read_nal_unit(CodedBitstreamContext *ctx,
                                  CodedBitstreamUnit *unit)
{
    GetBitContext gbc;
    int err;

    err = init_get_bits(&gbc, unit->data, 8 * unit->data_size);
    if (err < 0)
        return err;

    switch (unit->type) {
    case 128:
        {
            H265RawVPS *vps;

            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(*vps),
                                            &cbs_h265_free_vps);
            if (err < 0)
                return err;
            vps = unit->content;

            err = cbs_h265_read_vps(ctx, &gbc, vps);
            if (err < 0)
                return err;

            err = cbs_h265_replace_vps(ctx, unit);
            if (err < 0)
                return err;
        }
        break;
    case 135:
        {
            H265RawSPS *sps;

            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(*sps),
                                            &cbs_h265_free_sps);
            if (err < 0)
                return err;
            sps = unit->content;

            err = cbs_h265_read_sps(ctx, &gbc, sps);
            if (err < 0)
                return err;

            err = cbs_h265_replace_sps(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case 142:
        {
            H265RawPPS *pps;

            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(*pps),
                                            &cbs_h265_free_pps);
            if (err < 0)
                return err;
            pps = unit->content;

            err = cbs_h265_read_pps(ctx, &gbc, pps);
            if (err < 0)
                return err;

            err = cbs_h265_replace_pps(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case 132:
    case 131:
    case 130:
    case 129:
    case 134:
    case 133:
    case 141:
    case 140:
    case 139:
    case 138:
    case 147:
    case 146:
    case 148:
    case 143:
    case 144:
    case 145:
        {
            H265RawSlice *slice;
            int pos, len;

            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(*slice),
                                            &cbs_h265_free_slice);
            if (err < 0)
                return err;
            slice = unit->content;

            err = cbs_h265_read_slice_segment_header(ctx, &gbc, &slice->header);
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

    case 149:
        {
            err = ff_cbs_alloc_unit_content(ctx, unit,
                                            sizeof(H265RawAUD), ((void*)0));
            if (err < 0)
                return err;

            err = cbs_h265_read_aud(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case 137:
    case 136:
        {
            err = ff_cbs_alloc_unit_content(ctx, unit, sizeof(H265RawSEI),
                                            &cbs_h265_free_sei);

            if (err < 0)
                return err;

            err = cbs_h265_read_sei(ctx, &gbc, unit->content,
                                    unit->type == 137);

            if (err < 0)
                return err;
        }
        break;

    default:
        return AVERROR(ENOSYS);
    }

    return 0;
}
