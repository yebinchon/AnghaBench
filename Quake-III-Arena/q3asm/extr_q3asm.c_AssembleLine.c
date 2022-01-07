
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int imageUsed; } ;
struct TYPE_6__ {char* name; int opcode; } ;


 size_t BSSSEG ;
 size_t CODESEG ;
 int CodeError (char*,...) ;
 size_t DATASEG ;
 int DefineSymbol (char*,int) ;
 int EmitByte (TYPE_2__*,int) ;
 int EmitInt (TYPE_2__*,int) ;
 int HackToSegment (size_t) ;
 int HashString (char*) ;
 size_t LITSEG ;
 int NUM_SOURCE_OPS ;
 int OP_ARG ;
 int OP_BLOCK_COPY ;
 int OP_CALL ;
 int OP_CVFI ;
 int OP_CVIF ;
 int OP_ENTER ;
 int OP_IGNORE ;
 int OP_LEAVE ;
 int OP_LOCAL ;
 int OP_POP ;
 int OP_PUSH ;
 int OP_SEX16 ;
 int OP_SEX8 ;
 int OP_UNDEF ;
 int Parse () ;
 int ParseExpression () ;
 int ParseValue () ;
 int atoi (char*) ;
 int currentArgOffset ;
 int currentArgs ;
 int currentLocals ;
 TYPE_2__* currentSegment ;
 int instructionCount ;
 int* opcodesHash ;
 TYPE_2__* segment ;
 TYPE_1__* sourceOps ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strncmp (char*,char*,int) ;
 char* token ;

void AssembleLine( void ) {
 int v, v2;
 int i;
 int hash;

 Parse();
 if ( !token[0] ) {
  return;
 }

 hash = HashString( token );

 for ( i = 0 ; i < NUM_SOURCE_OPS ; i++ ) {
  if ( hash == opcodesHash[i] && !strcmp( token, sourceOps[i].name ) ) {
   int opcode;
   int expression;

   if ( sourceOps[i].opcode == OP_UNDEF ) {
    CodeError( "Undefined opcode: %s\n", token );
   }
   if ( sourceOps[i].opcode == OP_IGNORE ) {
    return;
   }


   opcode = sourceOps[i].opcode;
   if ( opcode == OP_SEX8 ) {
    Parse();
    if ( token[0] == '1' ) {
     opcode = OP_SEX8;
    } else if ( token[0] == '2' ) {
     opcode = OP_SEX16;
    } else {
     CodeError( "Bad sign extension: %s\n", token );
     return;
    }
   }


   Parse();
   if ( token[0] && sourceOps[i].opcode != OP_CVIF
     && sourceOps[i].opcode != OP_CVFI ) {
    expression = ParseExpression();





    if ( opcode == OP_BLOCK_COPY ) {
     expression = ( expression + 3 ) & ~3;
    }

    EmitByte( &segment[CODESEG], opcode );
    EmitInt( &segment[CODESEG], expression );
   } else {
    EmitByte( &segment[CODESEG], opcode );
   }

   instructionCount++;
   return;
  }
 }


 if ( !strncmp( token, "CALL", 4 ) ) {
  EmitByte( &segment[CODESEG], OP_CALL );
  instructionCount++;
  currentArgOffset = 0;
  return;
 }


 if ( !strncmp( token, "ARG", 3 ) ) {
  EmitByte( &segment[CODESEG], OP_ARG );
  instructionCount++;
  if ( 8 + currentArgOffset >= 256 ) {
   CodeError( "currentArgOffset >= 256" );
   return;
  }
  EmitByte( &segment[CODESEG], 8 + currentArgOffset );
  currentArgOffset += 4;
  return;
 }


 if ( !strncmp( token, "RET", 3 ) ) {
  EmitByte( &segment[CODESEG], OP_LEAVE );
  instructionCount++;
  EmitInt( &segment[CODESEG], 8 + currentLocals + currentArgs );
  return;
 }



 if ( !strncmp( token, "pop", 3 ) ) {
  EmitByte( &segment[CODESEG], OP_POP );
  instructionCount++;
  return;
 }


 if ( !strncmp( token, "ADDRF", 5 ) ) {
  instructionCount++;
  Parse();
  v = ParseExpression();
  v = 16 + currentArgs + currentLocals + v;
  EmitByte( &segment[CODESEG], OP_LOCAL );
  EmitInt( &segment[CODESEG], v );
  return;
 }


 if ( !strncmp( token, "ADDRL", 5 ) ) {
  instructionCount++;
  Parse();
  v = ParseExpression();
  v = 8 + currentArgs + v;
  EmitByte( &segment[CODESEG], OP_LOCAL );
  EmitInt( &segment[CODESEG], v );
  return;
 }

 if ( !strcmp( token, "proc" ) ) {
  char name[1024];

  Parse();
  strcpy( name, token );

  DefineSymbol( token, instructionCount );

  currentLocals = ParseValue();
  currentLocals = ( currentLocals + 3 ) & ~3;
  currentArgs = ParseValue();
  currentArgs = ( currentArgs + 3 ) & ~3;

  if ( 8 + currentLocals + currentArgs >= 32767 ) {
   CodeError( "Locals > 32k in %s\n", name );
  }

  instructionCount++;
  EmitByte( &segment[CODESEG], OP_ENTER );
  EmitInt( &segment[CODESEG], 8 + currentLocals + currentArgs );
  return;
 }
 if ( !strcmp( token, "endproc" ) ) {
  Parse();
  v = ParseValue();
  v2 = ParseValue();


  instructionCount++;
  EmitByte( &segment[CODESEG], OP_PUSH );

  instructionCount++;
  EmitByte( &segment[CODESEG], OP_LEAVE );
  EmitInt( &segment[CODESEG], 8 + currentLocals + currentArgs );

  return;
 }


 if ( !strcmp( token, "address" ) ) {
  Parse();
  v = ParseExpression();

  HackToSegment( DATASEG );
  EmitInt( currentSegment, v );
  return;
 }
 if ( !strcmp( token, "export" ) ) {
  return;
 }
 if ( !strcmp( token, "import" ) ) {
  return;
 }
 if ( !strcmp( token, "code" ) ) {
  currentSegment = &segment[CODESEG];
  return;
 }
 if ( !strcmp( token, "bss" ) ) {
  currentSegment = &segment[BSSSEG];
  return;
 }
 if ( !strcmp( token, "data" ) ) {
  currentSegment = &segment[DATASEG];
  return;
 }
 if ( !strcmp( token, "lit" ) ) {
  currentSegment = &segment[LITSEG];
  return;
 }
 if ( !strcmp( token, "line" ) ) {
  return;
 }
 if ( !strcmp( token, "file" ) ) {
  return;
 }

 if ( !strcmp( token, "equ" ) ) {
  char name[1024];

  Parse();
  strcpy( name, token );
  Parse();
  DefineSymbol( name, atoi(token) );
  return;
 }

 if ( !strcmp( token, "align" ) ) {
  v = ParseValue();
  currentSegment->imageUsed = (currentSegment->imageUsed + v - 1 ) & ~( v - 1 );
  return;
 }

 if ( !strcmp( token, "skip" ) ) {
  v = ParseValue();
  currentSegment->imageUsed += v;
  return;
 }

 if ( !strcmp( token, "byte" ) ) {
  v = ParseValue();
  v2 = ParseValue();

  if ( v == 1 ) {
   HackToSegment( LITSEG );
  } else if ( v == 4 ) {
   HackToSegment( DATASEG );
  } else if ( v == 2 ) {
   CodeError( "16 bit initialized data not supported" );
  }


  for ( i = 0 ; i < v ; i++ ) {
   EmitByte( currentSegment, v2 );
   v2 >>= 8;
  }
  return;
 }





 if ( !strncmp( token, "LABEL", 5 ) ) {
  Parse();
  if ( currentSegment == &segment[CODESEG] ) {
   DefineSymbol( token, instructionCount );
  } else {
   DefineSymbol( token, currentSegment->imageUsed );
  }
  return;
 }

 CodeError( "Unknown token: %s\n", token );
}
