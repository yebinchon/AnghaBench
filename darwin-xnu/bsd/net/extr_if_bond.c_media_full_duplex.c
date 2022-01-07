
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_info {int mi_active; } ;


 int IFM_FDX ;

__attribute__((used)) static __inline__ int
media_full_duplex(const struct media_info * mi)
{
    return ((mi->mi_active & IFM_FDX) != 0);
}
