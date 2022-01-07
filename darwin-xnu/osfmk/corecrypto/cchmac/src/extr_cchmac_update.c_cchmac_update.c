
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdigest_info {int dummy; } ;
typedef int cchmac_ctx_t ;


 int ccdigest_update (struct ccdigest_info const*,int ,size_t,void const*) ;
 int cchmac_digest_ctx (struct ccdigest_info const*,int ) ;

void cchmac_update(const struct ccdigest_info *di, cchmac_ctx_t hc,
                   size_t data_len, const void *data) {
    ccdigest_update(di, cchmac_digest_ctx(di, hc), data_len, data);
}
