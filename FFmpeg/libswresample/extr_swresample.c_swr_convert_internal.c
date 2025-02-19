
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_31__ {scalar_t__ ch_count; int count; int bps; scalar_t__* ch; int fmt; } ;
struct TYPE_28__ {int output_sample_bits; scalar_t__ method; int noise_pos; TYPE_4__ noise; TYPE_4__ temp; } ;
struct TYPE_29__ {int planar; } ;
struct TYPE_30__ {scalar_t__ ch_count; scalar_t__ planar; } ;
struct SwrContext {scalar_t__ used_ch_count; int int_sample_fmt; int in_sample_fmt; int out_sample_fmt; scalar_t__ out_convert; TYPE_1__ dither; int native_one; int (* mix_2_1_f ) (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int) ;int native_simd_one; int (* mix_2_1_simd ) (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int) ;scalar_t__ resample_first; scalar_t__ in_convert; TYPE_2__ in; TYPE_3__ out; int resample; int rematrix; int channel_map; TYPE_4__ preout; TYPE_4__ midbuf; TYPE_4__ postin; scalar_t__ full_convert; } ;
typedef TYPE_4__ AudioData ;






 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 scalar_t__ SWR_DITHER_NS ;
 int av_assert0 (int) ;
 int copy (TYPE_4__*,TYPE_4__*,int) ;
 int resample (struct SwrContext*,TYPE_4__*,int,TYPE_4__*,int) ;
 int stub1 (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int) ;
 int stub2 (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int) ;
 int stub3 (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int) ;
 int swri_audio_convert (scalar_t__,TYPE_4__*,TYPE_4__*,int) ;
 int swri_get_dither (struct SwrContext*,scalar_t__,int,unsigned long long,int ) ;
 int swri_noise_shaping_double (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ;
 int swri_noise_shaping_float (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ;
 int swri_noise_shaping_int16 (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ;
 int swri_noise_shaping_int32 (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ;
 int swri_realloc_audio (TYPE_4__*,int) ;
 int swri_rematrix (struct SwrContext*,TYPE_4__*,TYPE_4__*,int,int) ;

__attribute__((used)) static int swr_convert_internal(struct SwrContext *s, AudioData *out, int out_count,
                                                      AudioData *in , int in_count){
    AudioData *postin, *midbuf, *preout;
    int ret ;
    AudioData preout_tmp, midbuf_tmp;

    if(s->full_convert){
        av_assert0(!s->resample);
        swri_audio_convert(s->full_convert, out, in, in_count);
        return out_count;
    }




    if((ret=swri_realloc_audio(&s->postin, in_count))<0)
        return ret;
    if(s->resample_first){
        av_assert0(s->midbuf.ch_count == s->used_ch_count);
        if((ret=swri_realloc_audio(&s->midbuf, out_count))<0)
            return ret;
    }else{
        av_assert0(s->midbuf.ch_count == s->out.ch_count);
        if((ret=swri_realloc_audio(&s->midbuf, in_count))<0)
            return ret;
    }
    if((ret=swri_realloc_audio(&s->preout, out_count))<0)
        return ret;

    postin= &s->postin;

    midbuf_tmp= s->midbuf;
    midbuf= &midbuf_tmp;
    preout_tmp= s->preout;
    preout= &preout_tmp;

    if(s->int_sample_fmt == s-> in_sample_fmt && s->in.planar && !s->channel_map)
        postin= in;

    if(s->resample_first ? !s->resample : !s->rematrix)
        midbuf= postin;

    if(s->resample_first ? !s->rematrix : !s->resample)
        preout= midbuf;

    if(s->int_sample_fmt == s->out_sample_fmt && s->out.planar
       && !(s->out_sample_fmt==128 && (s->dither.output_sample_bits&31))){
        if(preout==in){
            out_count= FFMIN(out_count, in_count);
            av_assert0(s->in.planar);
            copy(out, in, out_count);
            return out_count;
        }
        else if(preout==postin) preout= midbuf= postin= out;
        else if(preout==midbuf) preout= midbuf= out;
        else preout= out;
    }

    if(in != postin){
        swri_audio_convert(s->in_convert, postin, in, in_count);
    }

    if(s->resample_first){
        if(postin != midbuf)
            out_count= resample(s, midbuf, out_count, postin, in_count);
        if(midbuf != preout)
            swri_rematrix(s, preout, midbuf, out_count, preout==out);
    }else{
        if(postin != midbuf)
            swri_rematrix(s, midbuf, postin, in_count, midbuf==out);
        if(midbuf != preout)
            out_count= resample(s, preout, out_count, midbuf, in_count);
    }

    if(preout != out && out_count){
        AudioData *conv_src = preout;
        if(s->dither.method){
            int ch;
            int dither_count= FFMAX(out_count, 1<<16);

            if (preout == in) {
                conv_src = &s->dither.temp;
                if((ret=swri_realloc_audio(&s->dither.temp, dither_count))<0)
                    return ret;
            }

            if((ret=swri_realloc_audio(&s->dither.noise, dither_count))<0)
                return ret;
            if(ret)
                for(ch=0; ch<s->dither.noise.ch_count; ch++)
                    if((ret=swri_get_dither(s, s->dither.noise.ch[ch], s->dither.noise.count, (12345678913579ULL*ch + 3141592) % 2718281828U, s->dither.noise.fmt))<0)
                        return ret;
            av_assert0(s->dither.noise.ch_count == preout->ch_count);

            if(s->dither.noise_pos + out_count > s->dither.noise.count)
                s->dither.noise_pos = 0;

            if (s->dither.method < SWR_DITHER_NS){
                if (s->mix_2_1_simd) {
                    int len1= out_count&~15;
                    int off = len1 * preout->bps;

                    if(len1)
                        for(ch=0; ch<preout->ch_count; ch++)
                            s->mix_2_1_simd(conv_src->ch[ch], preout->ch[ch], s->dither.noise.ch[ch] + s->dither.noise.bps * s->dither.noise_pos, s->native_simd_one, 0, 0, len1);
                    if(out_count != len1)
                        for(ch=0; ch<preout->ch_count; ch++)
                            s->mix_2_1_f(conv_src->ch[ch] + off, preout->ch[ch] + off, s->dither.noise.ch[ch] + s->dither.noise.bps * s->dither.noise_pos + off, s->native_one, 0, 0, out_count - len1);
                } else {
                    for(ch=0; ch<preout->ch_count; ch++)
                        s->mix_2_1_f(conv_src->ch[ch], preout->ch[ch], s->dither.noise.ch[ch] + s->dither.noise.bps * s->dither.noise_pos, s->native_one, 0, 0, out_count);
                }
            } else {
                switch(s->int_sample_fmt) {
                case 129 :swri_noise_shaping_int16(s, conv_src, preout, &s->dither.noise, out_count); break;
                case 128 :swri_noise_shaping_int32(s, conv_src, preout, &s->dither.noise, out_count); break;
                case 130 :swri_noise_shaping_float(s, conv_src, preout, &s->dither.noise, out_count); break;
                case 131 :swri_noise_shaping_double(s,conv_src, preout, &s->dither.noise, out_count); break;
                }
            }
            s->dither.noise_pos += out_count;
        }

        swri_audio_convert(s->out_convert, out, conv_src, out_count);
    }
    return out_count;
}
