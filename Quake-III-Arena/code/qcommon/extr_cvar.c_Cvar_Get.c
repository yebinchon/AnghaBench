
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; char* resetString; char* latchedString; int modificationCount; struct TYPE_7__* hashNext; struct TYPE_7__* next; void* string; int integer; int value; int modified; void* name; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ROM ;
 int CVAR_USER_CREATED ;
 int Com_DPrintf (char*,char const*,char*,char const*) ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*,char const*) ;
 void* CopyString (char const*) ;
 TYPE_1__* Cvar_FindVar (char const*) ;
 int Cvar_Set2 (char const*,char const*,int ) ;
 int Cvar_ValidateString (char const*) ;
 int ERR_FATAL ;
 size_t MAX_CVARS ;
 int Z_Free (char*) ;
 int atof (void*) ;
 int atoi (void*) ;
 TYPE_1__* cvar_indexes ;
 int cvar_modifiedFlags ;
 size_t cvar_numIndexes ;
 TYPE_1__* cvar_vars ;
 long generateHashValue (char const*) ;
 TYPE_1__** hashTable ;
 int qtrue ;
 scalar_t__ strcmp (char*,char const*) ;

cvar_t *Cvar_Get( const char *var_name, const char *var_value, int flags ) {
 cvar_t *var;
 long hash;

  if ( !var_name || ! var_value ) {
  Com_Error( ERR_FATAL, "Cvar_Get: NULL parameter" );
  }

 if ( !Cvar_ValidateString( var_name ) ) {
  Com_Printf("invalid cvar name string: %s\n", var_name );
  var_name = "BADNAME";
 }
 var = Cvar_FindVar (var_name);
 if ( var ) {


  if ( ( var->flags & CVAR_USER_CREATED ) && !( flags & CVAR_USER_CREATED )
   && var_value[0] ) {
   var->flags &= ~CVAR_USER_CREATED;
   Z_Free( var->resetString );
   var->resetString = CopyString( var_value );



   cvar_modifiedFlags |= flags;
  }

  var->flags |= flags;

  if ( !var->resetString[0] ) {

   Z_Free( var->resetString );
   var->resetString = CopyString( var_value );
  } else if ( var_value[0] && strcmp( var->resetString, var_value ) ) {
   Com_DPrintf( "Warning: cvar \"%s\" given initial values: \"%s\" and \"%s\"\n",
    var_name, var->resetString, var_value );
  }

  if ( var->latchedString ) {
   char *s;

   s = var->latchedString;
   var->latchedString = ((void*)0);
   Cvar_Set2( var_name, s, qtrue );
   Z_Free( s );
  }
  return var;
 }




 if ( cvar_numIndexes >= MAX_CVARS ) {
  Com_Error( ERR_FATAL, "MAX_CVARS" );
 }
 var = &cvar_indexes[cvar_numIndexes];
 cvar_numIndexes++;
 var->name = CopyString (var_name);
 var->string = CopyString (var_value);
 var->modified = qtrue;
 var->modificationCount = 1;
 var->value = atof (var->string);
 var->integer = atoi(var->string);
 var->resetString = CopyString( var_value );


 var->next = cvar_vars;
 cvar_vars = var;

 var->flags = flags;

 hash = generateHashValue(var_name);
 var->hashNext = hashTable[hash];
 hashTable[hash] = var;

 return var;
}
