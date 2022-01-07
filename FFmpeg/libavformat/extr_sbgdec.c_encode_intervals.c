
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct ws_intervals {int nb_inter; TYPE_1__* inter; } ;
struct sbg_script {int dummy; } ;
struct TYPE_6__ {int * extradata; } ;
struct TYPE_5__ {int type; int channels; int f1; int f2; int a1; int a2; int phi; int ts2; int ts1; } ;
typedef TYPE_2__ AVCodecParameters ;


 int ADD_EDATA32 (int) ;
 int ADD_EDATA64 (int ) ;
 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int ENOMEM ;


 scalar_t__ ff_alloc_extradata (TYPE_2__*,int) ;

__attribute__((used)) static int encode_intervals(struct sbg_script *s, AVCodecParameters *par,
                            struct ws_intervals *inter)
{
    int i, edata_size = 4;
    uint8_t *edata;

    for (i = 0; i < inter->nb_inter; i++) {
        edata_size += inter->inter[i].type == 128 ? 44 :
                      inter->inter[i].type == 129 ? 32 : 0;
        if (edata_size < 0)
            return AVERROR(ENOMEM);
    }
    if (ff_alloc_extradata(par, edata_size))
        return AVERROR(ENOMEM);
    edata = par->extradata;



    do { AV_WL32(edata, (inter->nb_inter)); edata += 4; } while(0);
    for (i = 0; i < inter->nb_inter; i++) {
        do { AV_WL64(edata, (inter->inter[i].ts1)); edata += 8; } while(0);
        do { AV_WL64(edata, (inter->inter[i].ts2)); edata += 8; } while(0);
        do { AV_WL32(edata, (inter->inter[i].type)); edata += 4; } while(0);
        do { AV_WL32(edata, (inter->inter[i].channels)); edata += 4; } while(0);
        switch (inter->inter[i].type) {
            case 128:
                do { AV_WL32(edata, (inter->inter[i].f1)); edata += 4; } while(0);
                do { AV_WL32(edata, (inter->inter[i].f2)); edata += 4; } while(0);
                do { AV_WL32(edata, (inter->inter[i].a1)); edata += 4; } while(0);
                do { AV_WL32(edata, (inter->inter[i].a2)); edata += 4; } while(0);
                do { AV_WL32(edata, (inter->inter[i].phi)); edata += 4; } while(0);
                break;
            case 129:
                do { AV_WL32(edata, (inter->inter[i].a1)); edata += 4; } while(0);
                do { AV_WL32(edata, (inter->inter[i].a2)); edata += 4; } while(0);
                break;
        }
    }
    if (edata != par->extradata + edata_size)
        return AVERROR_BUG;
    return 0;
}
