
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int (* imdct_half ) (TYPE_6__*,int*,int*,int) ;} ;
struct TYPE_11__ {int (* imdct_half ) (int *,int*,int*) ;} ;
struct TYPE_13__ {int* buf_mdct; int mdct_ld; TYPE_3__ mdct; TYPE_6__* mdct480; TYPE_2__* oc; } ;
struct TYPE_12__ {int* coeffs; int* ret; int* saved; } ;
struct TYPE_9__ {scalar_t__ frame_length_short; } ;
struct TYPE_10__ {TYPE_1__ m4ac; } ;
typedef TYPE_4__ SingleChannelElement ;
typedef int INTFLOAT ;
typedef TYPE_5__ AACContext ;


 int AAC_MUL31 (int,int const) ;
 int* AAC_RENAME (int ) ;
 int ff_aac_eld_window_480 ;
 int ff_aac_eld_window_512 ;
 int memcpy (int*,int*,int const) ;
 int memmove (int*,int*,int) ;
 int stub1 (TYPE_6__*,int*,int*,int) ;
 int stub2 (int *,int*,int*) ;

__attribute__((used)) static void imdct_and_windowing_eld(AACContext *ac, SingleChannelElement *sce)
{
    INTFLOAT *in = sce->coeffs;
    INTFLOAT *out = sce->ret;
    INTFLOAT *saved = sce->saved;
    INTFLOAT *buf = ac->buf_mdct;
    int i;
    const int n = ac->oc[1].m4ac.frame_length_short ? 480 : 512;
    const int n2 = n >> 1;
    const int n4 = n >> 2;
    const INTFLOAT *const window = n == 480 ? AAC_RENAME(ff_aac_eld_window_480) :
                                           AAC_RENAME(ff_aac_eld_window_512);






    for (i = 0; i < n2; i+=2) {
        INTFLOAT temp;
        temp = in[i ]; in[i ] = -in[n - 1 - i]; in[n - 1 - i] = temp;
        temp = -in[i + 1]; in[i + 1] = in[n - 2 - i]; in[n - 2 - i] = temp;
    }

    if (n == 480)
        ac->mdct480->imdct_half(ac->mdct480, buf, in, 1);
    else

        ac->mdct.imdct_half(&ac->mdct_ld, buf, in);






    for (i = 0; i < n; i+=2) {
        buf[i] = -buf[i];
    }







    for (i = n4; i < n2; i ++) {
        out[i - n4] = AAC_MUL31( buf[ n2 - 1 - i] , window[i - n4]) +
                      AAC_MUL31( saved[ i + n2] , window[i + n - n4]) +
                      AAC_MUL31(-saved[n + n2 - 1 - i] , window[i + 2*n - n4]) +
                      AAC_MUL31(-saved[ 2*n + n2 + i] , window[i + 3*n - n4]);
    }
    for (i = 0; i < n2; i ++) {
        out[n4 + i] = AAC_MUL31( buf[ i] , window[i + n2 - n4]) +
                      AAC_MUL31(-saved[ n - 1 - i] , window[i + n2 + n - n4]) +
                      AAC_MUL31(-saved[ n + i] , window[i + n2 + 2*n - n4]) +
                      AAC_MUL31( saved[2*n + n - 1 - i] , window[i + n2 + 3*n - n4]);
    }
    for (i = 0; i < n4; i ++) {
        out[n2 + n4 + i] = AAC_MUL31( buf[ i + n2] , window[i + n - n4]) +
                           AAC_MUL31(-saved[n2 - 1 - i] , window[i + 2*n - n4]) +
                           AAC_MUL31(-saved[n + n2 + i] , window[i + 3*n - n4]);
    }


    memmove(saved + n, saved, 2 * n * sizeof(*saved));
    memcpy( saved, buf, n * sizeof(*saved));
}
