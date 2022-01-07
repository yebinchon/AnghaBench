
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dsfmt_t ;


 int DSFMT_MEXP ;
 int dsfmt_chk_init_by_array (int *,int *,int,int ) ;

__attribute__((used)) inline static void dsfmt_init_by_array(dsfmt_t *dsfmt, uint32_t init_key[],
           int key_length) {
    dsfmt_chk_init_by_array(dsfmt, init_key, key_length, DSFMT_MEXP);
}
