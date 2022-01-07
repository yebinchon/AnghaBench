
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdrbg_nisthmac_state {int dummy; } ;
struct ccdrbg_nisthmac_custom {int dummy; } ;
struct ccdrbg_info {int size; struct ccdrbg_nisthmac_custom const* custom; int done; int reseed; int generate; int init; } ;


 int done ;
 int generate ;
 int init ;
 int reseed ;

void ccdrbg_factory_nisthmac(struct ccdrbg_info *info, const struct ccdrbg_nisthmac_custom *custom)
{
    info->size = sizeof(struct ccdrbg_nisthmac_state) + sizeof(struct ccdrbg_nisthmac_custom);
    info->init = init;
    info->generate = generate;
    info->reseed = reseed;
    info->done = done;
    info->custom = custom;
}
