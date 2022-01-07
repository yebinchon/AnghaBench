
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
typedef int qhandle_t ;
struct TYPE_2__ {int rewardStack; int* rewardCount; int * rewardShader; int * rewardSound; } ;


 int MAX_REWARDSTACK ;
 TYPE_1__ cg ;

__attribute__((used)) static void pushReward(sfxHandle_t sfx, qhandle_t shader, int rewardCount) {
 if (cg.rewardStack < (MAX_REWARDSTACK-1)) {
  cg.rewardStack++;
  cg.rewardSound[cg.rewardStack] = sfx;
  cg.rewardShader[cg.rewardStack] = shader;
  cg.rewardCount[cg.rewardStack] = rewardCount;
 }
}
