
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* frequency; void* phase; void* amplitude; void* base; int func; } ;
typedef TYPE_1__ waveForm_t ;
struct TYPE_7__ {int (* Printf ) (int ,char*,int ) ;} ;
struct TYPE_6__ {int name; } ;


 char* COM_ParseExt (char**,int ) ;
 int NameToGenFunc (char*) ;
 int PRINT_WARNING ;
 void* atof (char*) ;
 int qfalse ;
 TYPE_3__ ri ;
 TYPE_2__ shader ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;
 int stub3 (int ,char*,int ) ;
 int stub4 (int ,char*,int ) ;
 int stub5 (int ,char*,int ) ;

__attribute__((used)) static void ParseWaveForm( char **text, waveForm_t *wave )
{
 char *token;

 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 )
 {
  ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
  return;
 }
 wave->func = NameToGenFunc( token );


 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 )
 {
  ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
  return;
 }
 wave->base = atof( token );

 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 )
 {
  ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
  return;
 }
 wave->amplitude = atof( token );

 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 )
 {
  ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
  return;
 }
 wave->phase = atof( token );

 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 )
 {
  ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
  return;
 }
 wave->frequency = atof( token );
}
