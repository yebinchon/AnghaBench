
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_kills; int num_deaths; scalar_t__ inuse; int gs; } ;


 int MAX_CLIENTS ;
 TYPE_1__** botstates ;
 int trap_BotInterbreedGoalFuzzyLogic (int ,int ,int ) ;
 int trap_BotMutateGoalFuzzyLogic (int ,int) ;
 scalar_t__ trap_GeneticParentsAndChildSelection (int,float*,int*,int*,int*) ;

void BotInterbreedBots(void) {
 float ranks[MAX_CLIENTS];
 int parent1, parent2, child;
 int i;


 for (i = 0; i < MAX_CLIENTS; i++) {
  if ( botstates[i] && botstates[i]->inuse ) {
   ranks[i] = botstates[i]->num_kills * 2 - botstates[i]->num_deaths;
  }
  else {
   ranks[i] = -1;
  }
 }

 if (trap_GeneticParentsAndChildSelection(MAX_CLIENTS, ranks, &parent1, &parent2, &child)) {
  trap_BotInterbreedGoalFuzzyLogic(botstates[parent1]->gs, botstates[parent2]->gs, botstates[child]->gs);
  trap_BotMutateGoalFuzzyLogic(botstates[child]->gs, 1);
 }

 for (i = 0; i < MAX_CLIENTS; i++) {
  if (botstates[i] && botstates[i]->inuse) {
   botstates[i]->num_kills = 0;
   botstates[i]->num_deaths = 0;
  }
 }
}
