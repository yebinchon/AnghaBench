
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COM_ParseExt (char**,int ) ;
 int MAX_SHADERTEXT_HASH ;
 int Q_stricmp (char*,char const*) ;
 int SkipBracedSection (char**) ;
 int generateHashValue (char const*,int ) ;
 int qtrue ;
 char* s_shaderText ;
 char*** shaderTextHashTable ;

__attribute__((used)) static char *FindShaderInShaderText( const char *shadername ) {

 char *token, *p;

 int i, hash;

 hash = generateHashValue(shadername, MAX_SHADERTEXT_HASH);

 for (i = 0; shaderTextHashTable[hash][i]; i++) {
  p = shaderTextHashTable[hash][i];
  token = COM_ParseExt(&p, qtrue);
  if ( !Q_stricmp( token, shadername ) ) {
   return p;
  }
 }

 p = s_shaderText;

 if ( !p ) {
  return ((void*)0);
 }


 while ( 1 ) {
  token = COM_ParseExt( &p, qtrue );
  if ( token[0] == 0 ) {
   break;
  }

  if ( !Q_stricmp( token, shadername ) ) {
   return p;
  }
  else {

   SkipBracedSection( &p );
  }
 }

 return ((void*)0);
}
