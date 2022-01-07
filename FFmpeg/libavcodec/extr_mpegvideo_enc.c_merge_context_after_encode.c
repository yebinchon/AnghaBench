
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * encoding_error; } ;
struct TYPE_11__ {int error_count; } ;
struct TYPE_10__ {int buf; } ;
struct TYPE_9__ {TYPE_2__ pb; scalar_t__ noise_reduction; } ;
typedef TYPE_1__ MpegEncContext ;


 int MERGE (int ) ;
 int av_assert1 (int) ;
 int avpriv_copy_bits (TYPE_2__*,int ,int) ;
 int b_count ;
 TYPE_7__ current_picture ;
 int * dct_count ;
 int ** dct_error_sum ;
 TYPE_6__ er ;
 int f_count ;
 int flush_put_bits (TYPE_2__*) ;
 int i_count ;
 int i_tex_bits ;
 int misc_bits ;
 int mv_bits ;
 int p_tex_bits ;
 int padding_bug_score ;
 int put_bits_count (TYPE_2__*) ;
 int skip_count ;

__attribute__((used)) static void merge_context_after_encode(MpegEncContext *dst, MpegEncContext *src){
    int i;

    MERGE(dct_count[0]);
    MERGE(dct_count[1]);
    MERGE(mv_bits);
    MERGE(i_tex_bits);
    MERGE(p_tex_bits);
    MERGE(i_count);
    MERGE(f_count);
    MERGE(b_count);
    MERGE(skip_count);
    MERGE(misc_bits);
    MERGE(er.error_count);
    MERGE(padding_bug_score);
    MERGE(current_picture.encoding_error[0]);
    MERGE(current_picture.encoding_error[1]);
    MERGE(current_picture.encoding_error[2]);

    if (dst->noise_reduction){
        for(i=0; i<64; i++){
            MERGE(dct_error_sum[0][i]);
            MERGE(dct_error_sum[1][i]);
        }
    }

    av_assert1(put_bits_count(&src->pb) % 8 ==0);
    av_assert1(put_bits_count(&dst->pb) % 8 ==0);
    avpriv_copy_bits(&dst->pb, src->pb.buf, put_bits_count(&src->pb));
    flush_put_bits(&dst->pb);
}
