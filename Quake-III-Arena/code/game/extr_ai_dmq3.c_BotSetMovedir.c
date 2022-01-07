
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int AngleVectors (int ,int ,int *,int *) ;
 int MOVEDIR_DOWN ;
 int MOVEDIR_UP ;
 int VEC_DOWN ;
 int VEC_UP ;
 scalar_t__ VectorCompare (int ,int ) ;
 int VectorCopy (int ,int ) ;

void BotSetMovedir(vec3_t angles, vec3_t movedir) {
 if (VectorCompare(angles, VEC_UP)) {
  VectorCopy(MOVEDIR_UP, movedir);
 }
 else if (VectorCompare(angles, VEC_DOWN)) {
  VectorCopy(MOVEDIR_DOWN, movedir);
 }
 else {
  AngleVectors(angles, movedir, ((void*)0), ((void*)0));
 }
}
