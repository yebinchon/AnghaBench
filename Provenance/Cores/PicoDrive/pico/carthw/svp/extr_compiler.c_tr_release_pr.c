
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int known_regb ;
 int tr_flush_dirty_pr (int) ;

__attribute__((used)) static void tr_release_pr(int r)
{
 tr_flush_dirty_pr(r);
 known_regb &= ~(1 << (r+8));
}
