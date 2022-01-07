
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* imdct_half ) (int *,int*,int*) ;} ;
struct TYPE_12__ {int* buf_mdct; TYPE_2__* fdsp; int mdct_ld; TYPE_1__ mdct; } ;
struct TYPE_11__ {scalar_t__* use_kb_window; } ;
struct TYPE_10__ {int* coeffs; int* ret; int* saved; TYPE_4__ ics; } ;
struct TYPE_9__ {int (* vector_fmul_window ) (int*,int*,int*,int ,int) ;} ;
typedef TYPE_3__ SingleChannelElement ;
typedef TYPE_4__ IndividualChannelStream ;
typedef int INTFLOAT ;
typedef TYPE_5__ AACContext ;


 int AAC_RENAME (int ) ;
 int ff_sine_128 ;
 int ff_sine_512 ;
 int memcpy (int*,int*,int) ;
 int stub1 (int *,int*,int*) ;
 int stub2 (int*,int*,int*,int ,int) ;
 int stub3 (int*,int*,int*,int ,int) ;

__attribute__((used)) static void imdct_and_windowing_ld(AACContext *ac, SingleChannelElement *sce)
{
    IndividualChannelStream *ics = &sce->ics;
    INTFLOAT *in = sce->coeffs;
    INTFLOAT *out = sce->ret;
    INTFLOAT *saved = sce->saved;
    INTFLOAT *buf = ac->buf_mdct;





    ac->mdct.imdct_half(&ac->mdct_ld, buf, in);







    if (ics->use_kb_window[1]) {

        memcpy(out, saved, 192 * sizeof(*out));
        ac->fdsp->vector_fmul_window(out + 192, saved + 192, buf, AAC_RENAME(ff_sine_128), 64);
        memcpy( out + 320, buf + 64, 192 * sizeof(*out));
    } else {
        ac->fdsp->vector_fmul_window(out, saved, buf, AAC_RENAME(ff_sine_512), 256);
    }


    memcpy(saved, buf + 256, 256 * sizeof(*saved));
}
