
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetToken (int ) ;
 int LoadScriptFile (char*) ;
 int MAX_OS_PATH ;
 int MAX_SHADER_FILES ;
 int ParseShaderFile (char*) ;
 int free (char*) ;
 char* gamedir ;
 char* malloc (int ) ;
 int numShaderInfo ;
 int qprintf (char*,int ) ;
 int qtrue ;
 int sprintf (char*,char*,char*,...) ;
 int strcpy (char*,int ) ;
 int token ;

void LoadShaderInfo( void ) {
 char filename[1024];
 int i;
 char *shaderFiles[MAX_SHADER_FILES];
 int numShaderFiles;

 sprintf( filename, "%sscripts/shaderlist.txt", gamedir );
 LoadScriptFile( filename );

 numShaderFiles = 0;
 while ( 1 ) {
  if ( !GetToken( qtrue ) ) {
   break;
  }
    shaderFiles[numShaderFiles] = malloc(MAX_OS_PATH);
  strcpy( shaderFiles[ numShaderFiles ], token );
  numShaderFiles++;
 }

 for ( i = 0 ; i < numShaderFiles ; i++ ) {
  sprintf( filename, "%sscripts/%s.shader", gamedir, shaderFiles[i] );
  ParseShaderFile( filename );
    free(shaderFiles[i]);
 }

 qprintf( "%5i shaderInfo\n", numShaderInfo);
}
