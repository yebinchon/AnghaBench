
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* value; void* key; } ;
typedef TYPE_1__ epair_t ;


 int Error (char*) ;
 int GetToken (int ) ;
 int MAX_KEY ;
 int MAX_VALUE ;
 int StripTrailing (void*) ;
 void* copystring (int ) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int strlen (int ) ;
 int token ;

epair_t *ParseEpair( void ) {
 epair_t *e;

 e = malloc( sizeof(epair_t) );
 memset( e, 0, sizeof(epair_t) );

 if ( strlen(token) >= MAX_KEY-1 ) {
  Error ("ParseEpar: token too long");
 }
 e->key = copystring( token );
 GetToken( qfalse );
 if ( strlen(token) >= MAX_VALUE-1 ) {
  Error ("ParseEpar: token too long");
 }
 e->value = copystring( token );



 StripTrailing( e->key );
 StripTrailing( e->value );

 return e;
}
