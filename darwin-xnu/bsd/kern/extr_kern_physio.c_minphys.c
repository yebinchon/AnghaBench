
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct buf {int dummy; } ;


 int MAXPHYS ;
 int buf_count (struct buf*) ;
 int buf_setcount (struct buf*,int ) ;
 int min (int ,int ) ;

u_int
minphys(struct buf *bp)
{

 buf_setcount(bp, min(MAXPHYS, buf_count(bp)));
        return buf_count(bp);
}
