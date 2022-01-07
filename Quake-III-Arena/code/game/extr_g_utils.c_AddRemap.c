
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float timeOffset; int oldShader; int newShader; } ;


 int MAX_SHADER_REMAPS ;
 scalar_t__ Q_stricmp (char const*,int ) ;
 int remapCount ;
 TYPE_1__* remappedShaders ;
 int strcpy (int ,char const*) ;

void AddRemap(const char *oldShader, const char *newShader, float timeOffset) {
 int i;

 for (i = 0; i < remapCount; i++) {
  if (Q_stricmp(oldShader, remappedShaders[i].oldShader) == 0) {

   strcpy(remappedShaders[i].newShader,newShader);
   remappedShaders[i].timeOffset = timeOffset;
   return;
  }
 }
 if (remapCount < MAX_SHADER_REMAPS) {
  strcpy(remappedShaders[remapCount].newShader,newShader);
  strcpy(remappedShaders[remapCount].oldShader,oldShader);
  remappedShaders[remapCount].timeOffset = timeOffset;
  remapCount++;
 }
}
