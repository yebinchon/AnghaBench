
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_info {int mi_status; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;

__attribute__((used)) static __inline__ int
media_active(const struct media_info * mi)
{
    if ((mi->mi_status & IFM_AVALID) == 0) {
 return (1);
    }
    return ((mi->mi_status & IFM_ACTIVE) != 0);
}
