
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_block (int,int,int) ;
 scalar_t__ is_destructable (int ) ;
 int set_block (int,int,int,int) ;

void builder_block(int x, int y, int z, int w) {
    if (y <= 0 || y >= 256) {
        return;
    }
    if (is_destructable(get_block(x, y, z))) {
        set_block(x, y, z, 0);
    }
    if (w) {
        set_block(x, y, z, w);
    }
}
