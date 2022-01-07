
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AI_REACHABILITY_AREA ;
 int syscall (int ,int ,int) ;

int trap_BotReachabilityArea(vec3_t origin, int testground) {
 return syscall( BOTLIB_AI_REACHABILITY_AREA, origin, testground );
}
