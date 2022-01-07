
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* shader; } ;
typedef TYPE_1__ shaderInfo_t ;


 int atoi (char*) ;
 int strlen (char*) ;

int LayerForShader( shaderInfo_t *shader ) {
 int i;
 int l;

 l = strlen( shader->shader );
 for( i = l - 1; i >= 0; i-- ) {
  if ( shader->shader[ i ] == '_' ) {
   return atoi( &shader->shader[ i + 1 ] );
   break;
  }
 }

 return 0;
}
