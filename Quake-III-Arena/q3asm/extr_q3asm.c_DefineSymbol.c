
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hash; int value; struct TYPE_5__* next; int segment; int name; } ;
typedef TYPE_1__ symbol_t ;


 int CodeError (char*,char*) ;
 int Error (char*,int) ;
 int HashString (char*) ;
 int MAX_LINE_LENGTH ;
 int Q_stricmp (char*,char*) ;
 int copystring (char*) ;
 int currentFileIndex ;
 int currentSegment ;
 TYPE_1__* lastSymbol ;
 TYPE_1__* malloc (int) ;
 int passNumber ;
 int sprintf (char*,char*,char*,int) ;
 int strcmp (char*,int ) ;
 TYPE_1__* symbols ;

void DefineSymbol( char *sym, int value ) {
 symbol_t *s, *after;
 char expanded[MAX_LINE_LENGTH];
 int hash;

 if ( passNumber == 1 ) {
  return;
 }




  if (!Q_stricmp(sym, "vmMain"))
    if (value)
      Error( "vmMain must be the first symbol in the qvm (got offset %d)\n", value );


 if ( sym[0] == '$' ) {
  sprintf( expanded, "%s_%i", sym, currentFileIndex );
  sym = expanded;
 }

 hash = HashString( sym );

 for ( s = symbols ; s ; s = s->next ) {
  if ( hash == s->hash && !strcmp( sym, s->name ) ) {
   CodeError( "Multiple definitions for %s\n", sym );
   return;
  }
 }

 s = malloc( sizeof( *s ) );
 s->name = copystring( sym );
 s->hash = hash;
 s->value = value;
 s->segment = currentSegment;

 lastSymbol = s;


 if ( !symbols || s->value < symbols->value ) {
  s->next = symbols;
  symbols = s;
  return;
 }

 for ( after = symbols ; after->next && after->next->value < value ; after = after->next ) {
 }
 s->next = after->next;
 after->next = s;
}
