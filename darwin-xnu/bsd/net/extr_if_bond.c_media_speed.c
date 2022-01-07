
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_info {int mi_active; } ;


 int link_speed (int ) ;

__attribute__((used)) static __inline__ int
media_speed(const struct media_info * mi)
{
    return (link_speed(mi->mi_active));
}
