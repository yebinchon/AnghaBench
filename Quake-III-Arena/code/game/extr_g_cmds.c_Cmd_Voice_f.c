
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int gentity_t ;


 char* ConcatArgs (int) ;
 int G_Voice (int *,int *,int,char*,scalar_t__) ;
 int trap_Argc () ;

__attribute__((used)) static void Cmd_Voice_f( gentity_t *ent, int mode, qboolean arg0, qboolean voiceonly ) {
 char *p;

 if ( trap_Argc () < 2 && !arg0 ) {
  return;
 }

 if (arg0)
 {
  p = ConcatArgs( 0 );
 }
 else
 {
  p = ConcatArgs( 1 );
 }

 G_Voice( ent, ((void*)0), mode, p, voiceonly );
}
