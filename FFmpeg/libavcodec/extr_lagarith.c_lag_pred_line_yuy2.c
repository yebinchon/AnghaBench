
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* add_median_pred ) (int*,int*,int*,int,int*,int*) ;int (* add_left_pred ) (int*,int*,int,int ) ;} ;
struct TYPE_5__ {TYPE_1__ llviddsp; } ;
typedef TYPE_2__ LagarithContext ;


 int mid_pred (int,int,int) ;
 int stub1 (int*,int*,int,int ) ;
 int stub2 (int*,int*,int*,int,int*,int*) ;

__attribute__((used)) static void lag_pred_line_yuy2(LagarithContext *l, uint8_t *buf,
                               int width, int stride, int line,
                               int is_luma)
{
    int L, TL;

    if (!line) {
        L= buf[0];
        if (is_luma)
            buf[0] = 0;
        l->llviddsp.add_left_pred(buf, buf, width, 0);
        if (is_luma)
            buf[0] = L;
        return;
    }
    if (line == 1) {
        const int HEAD = is_luma ? 4 : 2;
        int i;

        L = buf[width - stride - 1];
        TL = buf[HEAD - stride - 1];
        for (i = 0; i < HEAD; i++) {
            L += buf[i];
            buf[i] = L;
        }
        for (; i < width; i++) {
            L = mid_pred(L & 0xFF, buf[i - stride], (L + buf[i - stride] - TL) & 0xFF) + buf[i];
            TL = buf[i - stride];
            buf[i] = L;
        }
    } else {
        TL = buf[width - (2 * stride) - 1];
        L = buf[width - stride - 1];
        l->llviddsp.add_median_pred(buf, buf - stride, buf, width, &L, &TL);
    }
}
