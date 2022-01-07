
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdigest_info {int dummy; } ;


 int FIPSPOST_TRACE_EVENT ;
 int cchmac_di_clear (struct ccdigest_info const*,int ) ;
 int cchmac_di_decl (struct ccdigest_info const*,int ) ;
 int cchmac_final (struct ccdigest_info const*,int ,unsigned char*) ;
 int cchmac_init (struct ccdigest_info const*,int ,size_t,void const*) ;
 int cchmac_update (struct ccdigest_info const*,int ,size_t,void const*) ;
 int hc ;

void cchmac(const struct ccdigest_info *di,
            size_t key_len, const void *key,
            size_t data_len, const void *data, unsigned char *mac) {
    FIPSPOST_TRACE_EVENT;

    cchmac_di_decl(di, hc);
    cchmac_init(di, hc, key_len, key);
    cchmac_update(di, hc, data_len, data);
    cchmac_final(di, hc, mac);
 cchmac_di_clear(di, hc);
}
