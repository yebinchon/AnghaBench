
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int put_chroma_pixels_tab; int put_pixels_tab; } ;
struct TYPE_6__ {TYPE_1__ rdsp; int rv30; } ;
typedef TYPE_2__ RV34DecContext ;


 int rv34_mc (TYPE_2__*,int const,int const,int const,int,int const,int const,int,int ,int ,int ,int ) ;

__attribute__((used)) static void rv34_mc_1mv(RV34DecContext *r, const int block_type,
                        const int xoff, const int yoff, int mv_off,
                        const int width, const int height, int dir)
{
    rv34_mc(r, block_type, xoff, yoff, mv_off, width, height, dir, r->rv30, 0,
            r->rdsp.put_pixels_tab,
            r->rdsp.put_chroma_pixels_tab);
}
