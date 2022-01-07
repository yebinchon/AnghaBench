
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int instructionPointersLength; int* instructionPointers; int numSymbols; TYPE_2__* symbols; int name; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_7__ {int symValue; int symName; struct TYPE_7__* next; } ;
typedef TYPE_2__ vmSymbol_t ;
typedef int symbols ;
struct TYPE_8__ {int integer; } ;


 char* COM_Parse (char**) ;
 int COM_StripExtension (int ,char*) ;
 int Com_Printf (char*,...) ;
 int Com_sprintf (char*,int,char*,char*) ;
 int FS_FreeFile (char*) ;
 int FS_ReadFile (char*,void**) ;
 TYPE_2__* Hunk_Alloc (int,int ) ;
 int MAX_QPATH ;
 int ParseHex (char*) ;
 int Q_strncpyz (int ,char*,int) ;
 TYPE_3__* com_developer ;
 int h_high ;
 int strlen (char*) ;

void VM_LoadSymbols( vm_t *vm ) {
 int len;
 char *mapfile, *text_p, *token;
 char name[MAX_QPATH];
 char symbols[MAX_QPATH];
 vmSymbol_t **prev, *sym;
 int count;
 int value;
 int chars;
 int segment;
 int numInstructions;


 if ( !com_developer->integer ) {
  return;
 }

 COM_StripExtension( vm->name, name );
 Com_sprintf( symbols, sizeof( symbols ), "vm/%s.map", name );
 len = FS_ReadFile( symbols, (void **)&mapfile );
 if ( !mapfile ) {
  Com_Printf( "Couldn't load symbol file: %s\n", symbols );
  return;
 }

 numInstructions = vm->instructionPointersLength >> 2;


 text_p = mapfile;
 prev = &vm->symbols;
 count = 0;

 while ( 1 ) {
  token = COM_Parse( &text_p );
  if ( !token[0] ) {
   break;
  }
  segment = ParseHex( token );
  if ( segment ) {
   COM_Parse( &text_p );
   COM_Parse( &text_p );
   continue;
  }

  token = COM_Parse( &text_p );
  if ( !token[0] ) {
   Com_Printf( "WARNING: incomplete line at end of file\n" );
   break;
  }
  value = ParseHex( token );

  token = COM_Parse( &text_p );
  if ( !token[0] ) {
   Com_Printf( "WARNING: incomplete line at end of file\n" );
   break;
  }
  chars = strlen( token );
  sym = Hunk_Alloc( sizeof( *sym ) + chars, h_high );
  *prev = sym;
  prev = &sym->next;
  sym->next = ((void*)0);


  if ( value >= 0 && value < numInstructions ) {
   value = vm->instructionPointers[value];
  }

  sym->symValue = value;
  Q_strncpyz( sym->symName, token, chars + 1 );

  count++;
 }

 vm->numSymbols = count;
 Com_Printf( "%i symbols parsed from %s\n", count, symbols );
 FS_FreeFile( mapfile );
}
