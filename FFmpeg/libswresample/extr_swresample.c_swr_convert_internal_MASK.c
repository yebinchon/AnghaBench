#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {scalar_t__ ch_count; int count; int bps; scalar_t__* ch; int /*<<< orphan*/  fmt; } ;
struct TYPE_28__ {int output_sample_bits; scalar_t__ method; int noise_pos; TYPE_4__ noise; TYPE_4__ temp; } ;
struct TYPE_29__ {int planar; } ;
struct TYPE_30__ {scalar_t__ ch_count; scalar_t__ planar; } ;
struct SwrContext {scalar_t__ used_ch_count; int int_sample_fmt; int in_sample_fmt; int out_sample_fmt; scalar_t__ out_convert; TYPE_1__ dither; int /*<<< orphan*/  native_one; int /*<<< orphan*/  (* mix_2_1_f ) (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  native_simd_one; int /*<<< orphan*/  (* mix_2_1_simd ) (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;scalar_t__ resample_first; scalar_t__ in_convert; TYPE_2__ in; TYPE_3__ out; int /*<<< orphan*/  resample; int /*<<< orphan*/  rematrix; int /*<<< orphan*/  channel_map; TYPE_4__ preout; TYPE_4__ midbuf; TYPE_4__ postin; scalar_t__ full_convert; } ;
typedef  TYPE_4__ AudioData ;

/* Variables and functions */
#define  AV_SAMPLE_FMT_DBLP 131 
#define  AV_SAMPLE_FMT_FLTP 130 
#define  AV_SAMPLE_FMT_S16P 129 
#define  AV_SAMPLE_FMT_S32P 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ SWR_DITHER_NS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*,int) ; 
 int FUNC4 (struct SwrContext*,TYPE_4__*,int,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_4__*,TYPE_4__*,int) ; 
 int FUNC9 (struct SwrContext*,scalar_t__,int,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct SwrContext*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int) ; 
 int FUNC14 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct SwrContext*,TYPE_4__*,TYPE_4__*,int,int) ; 

__attribute__((used)) static int FUNC16(struct SwrContext *s, AudioData *out, int out_count,
                                                      AudioData *in , int  in_count){
    AudioData *postin, *midbuf, *preout;
    int ret/*, in_max*/;
    AudioData preout_tmp, midbuf_tmp;

    if(s->full_convert){
        FUNC2(!s->resample);
        FUNC8(s->full_convert, out, in, in_count);
        return out_count;
    }

//     in_max= out_count*(int64_t)s->in_sample_rate / s->out_sample_rate + resample_filter_taps;
//     in_count= FFMIN(in_count, in_in + 2 - s->hist_buffer_count);

    if((ret=FUNC14(&s->postin, in_count))<0)
        return ret;
    if(s->resample_first){
        FUNC2(s->midbuf.ch_count == s->used_ch_count);
        if((ret=FUNC14(&s->midbuf, out_count))<0)
            return ret;
    }else{
        FUNC2(s->midbuf.ch_count ==  s->out.ch_count);
        if((ret=FUNC14(&s->midbuf,  in_count))<0)
            return ret;
    }
    if((ret=FUNC14(&s->preout, out_count))<0)
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
       && !(s->out_sample_fmt==AV_SAMPLE_FMT_S32P && (s->dither.output_sample_bits&31))){
        if(preout==in){
            out_count= FUNC1(out_count, in_count); //TODO check at the end if this is needed or redundant
            FUNC2(s->in.planar); //we only support planar internally so it has to be, we support copying non planar though
            FUNC3(out, in, out_count);
            return out_count;
        }
        else if(preout==postin) preout= midbuf= postin= out;
        else if(preout==midbuf) preout= midbuf= out;
        else                    preout= out;
    }

    if(in != postin){
        FUNC8(s->in_convert, postin, in, in_count);
    }

    if(s->resample_first){
        if(postin != midbuf)
            out_count= FUNC4(s, midbuf, out_count, postin, in_count);
        if(midbuf != preout)
            FUNC15(s, preout, midbuf, out_count, preout==out);
    }else{
        if(postin != midbuf)
            FUNC15(s, midbuf, postin, in_count, midbuf==out);
        if(midbuf != preout)
            out_count= FUNC4(s, preout, out_count, midbuf, in_count);
    }

    if(preout != out && out_count){
        AudioData *conv_src = preout;
        if(s->dither.method){
            int ch;
            int dither_count= FUNC0(out_count, 1<<16);

            if (preout == in) {
                conv_src = &s->dither.temp;
                if((ret=FUNC14(&s->dither.temp, dither_count))<0)
                    return ret;
            }

            if((ret=FUNC14(&s->dither.noise, dither_count))<0)
                return ret;
            if(ret)
                for(ch=0; ch<s->dither.noise.ch_count; ch++)
                    if((ret=FUNC9(s, s->dither.noise.ch[ch], s->dither.noise.count, (12345678913579ULL*ch + 3141592) % 2718281828U, s->dither.noise.fmt))<0)
                        return ret;
            FUNC2(s->dither.noise.ch_count == preout->ch_count);

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
                case AV_SAMPLE_FMT_S16P :FUNC12(s, conv_src, preout, &s->dither.noise, out_count); break;
                case AV_SAMPLE_FMT_S32P :FUNC13(s, conv_src, preout, &s->dither.noise, out_count); break;
                case AV_SAMPLE_FMT_FLTP :FUNC11(s, conv_src, preout, &s->dither.noise, out_count); break;
                case AV_SAMPLE_FMT_DBLP :FUNC10(s,conv_src, preout, &s->dither.noise, out_count); break;
                }
            }
            s->dither.noise_pos += out_count;
        }
//FIXME packed doesn't need more than 1 chan here!
        FUNC8(s->out_convert, out, conv_src, out_count);
    }
    return out_count;
}