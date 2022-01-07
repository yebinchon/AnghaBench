
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int const* n_val; int const* r_val; } ;
typedef TYPE_1__ OMAContext ;
typedef TYPE_2__ AVFormatContext ;


 int FFMIN (int,int) ;
 int memcpy (int const*,int const*,int) ;
 int memset (int const*,int ,int) ;

__attribute__((used)) static int kset(AVFormatContext *s, const uint8_t *r_val, const uint8_t *n_val,
                int len)
{
    OMAContext *oc = s->priv_data;

    if (!r_val && !n_val)
        return -1;

    len = FFMIN(len, 16);


    if (r_val) {
        if (r_val != oc->r_val) {
            memset(oc->r_val, 0, 24);
            memcpy(oc->r_val, r_val, len);
        }
        memcpy(&oc->r_val[16], r_val, 8);
    }
    if (n_val) {
        if (n_val != oc->n_val) {
            memset(oc->n_val, 0, 24);
            memcpy(oc->n_val, n_val, len);
        }
        memcpy(&oc->n_val[16], n_val, 8);
    }

    return 0;
}
