
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct motion_plus_t {int dummy; } ;


 int WIIUSE_DEBUG (char*) ;
 int memset (struct motion_plus_t*,int ,int) ;

void motion_plus_disconnected(struct motion_plus_t* mp)
{
 WIIUSE_DEBUG("Motion plus disconnected");
 memset(mp, 0, sizeof(struct motion_plus_t));
}
