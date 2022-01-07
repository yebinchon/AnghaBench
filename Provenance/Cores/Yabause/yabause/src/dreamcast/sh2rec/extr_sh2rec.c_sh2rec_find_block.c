
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int sh2rec_block_t ;


 int * sh2rec_htab_block_create (int ,int) ;
 int * sh2rec_htab_lookup (int ) ;
 int sh2rec_rec_block (int *) ;

sh2rec_block_t *sh2rec_find_block(u32 pc) {
    sh2rec_block_t *b = sh2rec_htab_lookup(pc);

    if(!b) {
        b = sh2rec_htab_block_create(pc, 4096);
        sh2rec_rec_block(b);
    }

    return b;
}
