
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdrbg_state {int dummy; } ;
struct ccdrbg_nisthmac_state {int dummy; } ;


 int cc_clear (int,struct ccdrbg_nisthmac_state*) ;

__attribute__((used)) static void done(struct ccdrbg_state *drbg)
{
    struct ccdrbg_nisthmac_state *state=(struct ccdrbg_nisthmac_state *)drbg;
    cc_clear(sizeof(struct ccdrbg_nisthmac_state), state);
}
