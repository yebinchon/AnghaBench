#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * encoding_error; } ;
struct TYPE_11__ {int /*<<< orphan*/  error_count; } ;
struct TYPE_10__ {int /*<<< orphan*/  buf; } ;
struct TYPE_9__ {TYPE_2__ pb; scalar_t__ noise_reduction; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  b_count ; 
 TYPE_7__ current_picture ; 
 int /*<<< orphan*/ * dct_count ; 
 int /*<<< orphan*/ ** dct_error_sum ; 
 TYPE_6__ er ; 
 int /*<<< orphan*/  f_count ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  i_count ; 
 int /*<<< orphan*/  i_tex_bits ; 
 int /*<<< orphan*/  misc_bits ; 
 int /*<<< orphan*/  mv_bits ; 
 int /*<<< orphan*/  p_tex_bits ; 
 int /*<<< orphan*/  padding_bug_score ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  skip_count ; 

__attribute__((used)) static void FUNC5(MpegEncContext *dst, MpegEncContext *src){
    int i;

    FUNC0(dct_count[0]); //note, the other dct vars are not part of the context
    FUNC0(dct_count[1]);
    FUNC0(mv_bits);
    FUNC0(i_tex_bits);
    FUNC0(p_tex_bits);
    FUNC0(i_count);
    FUNC0(f_count);
    FUNC0(b_count);
    FUNC0(skip_count);
    FUNC0(misc_bits);
    FUNC0(er.error_count);
    FUNC0(padding_bug_score);
    FUNC0(current_picture.encoding_error[0]);
    FUNC0(current_picture.encoding_error[1]);
    FUNC0(current_picture.encoding_error[2]);

    if (dst->noise_reduction){
        for(i=0; i<64; i++){
            FUNC0(dct_error_sum[0][i]);
            FUNC0(dct_error_sum[1][i]);
        }
    }

    FUNC1(FUNC4(&src->pb) % 8 ==0);
    FUNC1(FUNC4(&dst->pb) % 8 ==0);
    FUNC2(&dst->pb, src->pb.buf, FUNC4(&src->pb));
    FUNC3(&dst->pb);
}