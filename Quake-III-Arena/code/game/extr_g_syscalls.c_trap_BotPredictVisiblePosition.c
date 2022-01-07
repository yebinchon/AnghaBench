
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AI_PREDICT_VISIBLE_POSITION ;
 int syscall (int ,int ,int,void*,int,int ) ;

int trap_BotPredictVisiblePosition(vec3_t origin, int areanum, void *goal, int travelflags, vec3_t target) {
 return syscall( BOTLIB_AI_PREDICT_VISIBLE_POSITION, origin, areanum, goal, travelflags, target );
}
