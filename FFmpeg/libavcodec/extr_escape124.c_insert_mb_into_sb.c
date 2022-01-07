
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int * pixels32; } ;
struct TYPE_5__ {int * pixels32; } ;
typedef TYPE_1__ SuperBlock ;
typedef TYPE_2__ MacroBlock ;



__attribute__((used)) static void insert_mb_into_sb(SuperBlock* sb, MacroBlock mb, unsigned index) {

   uint32_t *dst = sb->pixels32 + index + (index & -4);


   dst[0] = mb.pixels32[0];
   dst[4] = mb.pixels32[1];
}
