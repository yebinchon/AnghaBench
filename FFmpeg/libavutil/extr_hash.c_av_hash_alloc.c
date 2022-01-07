
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int type; int ctx; int crctab; } ;
typedef TYPE_1__ AVHashContext ;



 int AVERROR (int ) ;
 int AV_CRC_32_IEEE_LE ;

 int EINVAL ;
 int ENOMEM ;


 int NUM_HASHES ;
 int av_crc_get_table (int ) ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_mallocz (int) ;
 int av_md5_alloc () ;
 int av_murmur3_alloc () ;
 int av_ripemd_alloc () ;
 int av_sha512_alloc () ;
 int av_sha_alloc () ;
 scalar_t__ av_strcasecmp (char const*,int ) ;
 TYPE_2__* hashdesc ;

int av_hash_alloc(AVHashContext **ctx, const char *name)
{
    AVHashContext *res;
    int i;
    *ctx = ((void*)0);
    for (i = 0; i < NUM_HASHES; i++)
        if (av_strcasecmp(name, hashdesc[i].name) == 0)
            break;
    if (i >= NUM_HASHES) return AVERROR(EINVAL);
    res = av_mallocz(sizeof(*res));
    if (!res) return AVERROR(ENOMEM);
    res->type = i;
    switch (i) {
    case 140: res->ctx = av_md5_alloc(); break;
    case 139: res->ctx = av_murmur3_alloc(); break;
    case 138:
    case 137:
    case 136:
    case 135: res->ctx = av_ripemd_alloc(); break;
    case 134:
    case 133:
    case 132: res->ctx = av_sha_alloc(); break;
    case 129:
    case 128:
    case 131:
    case 130: res->ctx = av_sha512_alloc(); break;
    case 141: res->crctab = av_crc_get_table(AV_CRC_32_IEEE_LE); break;
    case 142: break;
    }
    if (i != 142 && i != 141 && !res->ctx) {
        av_free(res);
        return AVERROR(ENOMEM);
    }
    *ctx = res;
    return 0;
}
