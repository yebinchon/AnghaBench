
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {scalar_t__ schedlen; int flags; scalar_t__ alg_enc; int * sched; int key_enc; } ;
struct esp_algorithm {scalar_t__ keymin; scalar_t__ keymax; int (* schedule ) (struct esp_algorithm const*,struct secasvar*) ;scalar_t__ (* schedlen ) (struct esp_algorithm const*) ;int name; } ;


 int EINVAL ;
 int ENOBUFS ;
 int FREE (int *,int ) ;
 int LOG_ERR ;
 int M_DONTWAIT ;
 int M_SECA ;
 scalar_t__ SADB_X_EALG_AES_GCM ;
 scalar_t__ SADB_X_EALG_CHACHA20POLY1305 ;
 int SADB_X_EXT_IIV ;
 scalar_t__ _KEYBITS (int ) ;
 int * _MALLOC (scalar_t__,int ,int ) ;
 int bzero (int *,scalar_t__) ;
 int ipseclog (int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int sadb_mutex ;
 scalar_t__ stub1 (struct esp_algorithm const*) ;
 int stub2 (struct esp_algorithm const*,struct secasvar*) ;

int
esp_schedule(const struct esp_algorithm *algo, struct secasvar *sav)
{
 int error;


 if (_KEYBITS(sav->key_enc) < algo->keymin ||
     _KEYBITS(sav->key_enc) > algo->keymax) {
  ipseclog((LOG_ERR,
      "esp_schedule %s: unsupported key length %d: "
      "needs %d to %d bits\n", algo->name, _KEYBITS(sav->key_enc),
      algo->keymin, algo->keymax));
  return EINVAL;
 }

 lck_mtx_lock(sadb_mutex);

 if (sav->sched && sav->schedlen != 0) {
  lck_mtx_unlock(sadb_mutex);
  return 0;
 }


 if (((sav->flags & SADB_X_EXT_IIV) != 0) &&
  (sav->alg_enc != SADB_X_EALG_AES_GCM) &&
  (sav->alg_enc != SADB_X_EALG_CHACHA20POLY1305)) {
  ipseclog((LOG_ERR,
      "esp_schedule %s: implicit IV not allowed\n",
   algo->name));
  lck_mtx_unlock(sadb_mutex);
  return EINVAL;
 }


 if (!algo->schedule || !algo->schedlen) {
  lck_mtx_unlock(sadb_mutex);
  return 0;
 }

 sav->schedlen = (*algo->schedlen)(algo);
 if ((signed) sav->schedlen < 0) {
  lck_mtx_unlock(sadb_mutex);
  return EINVAL;
 }


 sav->sched = _MALLOC(sav->schedlen, M_SECA, M_DONTWAIT);
 if (!sav->sched) {
  sav->schedlen = 0;
  lck_mtx_unlock(sadb_mutex);
  return ENOBUFS;
 }

 error = (*algo->schedule)(algo, sav);
 if (error) {
  ipseclog((LOG_ERR, "esp_schedule %s: error %d\n",
      algo->name, error));
  bzero(sav->sched, sav->schedlen);
  FREE(sav->sched, M_SECA);
  sav->sched = ((void*)0);
  sav->schedlen = 0;
 }
 lck_mtx_unlock(sadb_mutex);
 return error;
}
