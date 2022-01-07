
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct blist {int dummy; } ;
typedef int daddr_t ;
typedef int blmeta_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_4__ {int bl_blocks; int bl_radix; int bl_skip; int bl_rootblks; int * bl_root; } ;


 int BLIST_BMAP_RADIX ;
 int BLIST_META_RADIX_SHIFT ;
 int M_SWAP ;
 int M_WAITOK ;
 int blst_radix_init (int *,int,int,int) ;
 int bzero (TYPE_1__*,int) ;
 void* malloc (int,int ,int ) ;
 int printf (char*,int,...) ;

blist_t
blist_create(daddr_t blocks)
{
 blist_t bl;
 int radix;
 int skip = 0;




 radix = BLIST_BMAP_RADIX;

 while (radix < blocks) {
  radix <<= BLIST_META_RADIX_SHIFT;
  skip = (skip + 1) << BLIST_META_RADIX_SHIFT;
 }

 bl = malloc(sizeof(struct blist), M_SWAP, M_WAITOK);

 bzero(bl, sizeof(*bl));

 bl->bl_blocks = blocks;
 bl->bl_radix = radix;
 bl->bl_skip = skip;
 bl->bl_rootblks = 1 +
     blst_radix_init(((void*)0), bl->bl_radix, bl->bl_skip, blocks);
 bl->bl_root = malloc(sizeof(blmeta_t) * bl->bl_rootblks, M_SWAP, M_WAITOK);
 blst_radix_init(bl->bl_root, bl->bl_radix, bl->bl_skip, blocks);

 return(bl);
}
