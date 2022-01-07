
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hash; int value; TYPE_1__* segment; int name; struct TYPE_5__* next; } ;
typedef TYPE_2__ symbol_t ;
struct TYPE_4__ {int segmentBase; } ;


 int CodeError (char*,char*) ;
 int DefineSymbol (char*,int ) ;
 int HashString (char*) ;
 int MAX_LINE_LENGTH ;
 int currentFileIndex ;
 int passNumber ;
 int sprintf (char*,char*,char*,int) ;
 int strcmp (char*,int ) ;
 TYPE_2__* symbols ;

int LookupSymbol( char *sym ) {
 symbol_t *s;
 char expanded[MAX_LINE_LENGTH];
 int hash;

 if ( passNumber == 0 ) {
  return 0;
 }


 if ( sym[0] == '$' ) {
  sprintf( expanded, "%s_%i", sym, currentFileIndex );
  sym = expanded;
 }

 hash = HashString( sym );
 for ( s = symbols ; s ; s = s->next ) {
  if ( hash == s->hash && !strcmp( sym, s->name ) ) {
   return s->segment->segmentBase + s->value;
  }
 }

 CodeError( "ERROR: symbol %s undefined\n", sym );
 passNumber = 0;
 DefineSymbol( sym, 0 );
 passNumber = 1;
 return 0;
}
