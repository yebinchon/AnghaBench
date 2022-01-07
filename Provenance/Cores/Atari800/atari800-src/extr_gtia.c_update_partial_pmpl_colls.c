
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_XPOS ;
 int collision_curpos ;
 int generate_partial_pmpl_colls (int,int) ;

__attribute__((used)) static void update_partial_pmpl_colls(void)
{
 int l = collision_curpos;
 int r = ANTIC_XPOS * 2 - 37;
 generate_partial_pmpl_colls(l, r);
 collision_curpos = r;
}
