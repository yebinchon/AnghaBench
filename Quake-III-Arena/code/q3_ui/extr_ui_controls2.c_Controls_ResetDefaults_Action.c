
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int changesmade; } ;


 int Controls_SetDefaults () ;
 int Controls_Update () ;
 int qtrue ;
 TYPE_1__ s_controls ;

__attribute__((used)) static void Controls_ResetDefaults_Action( qboolean result ) {
 if( !result ) {
  return;
 }

 s_controls.changesmade = qtrue;
 Controls_SetDefaults();
 Controls_Update();
}
