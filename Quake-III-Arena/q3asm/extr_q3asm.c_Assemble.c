
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int segmentBase; int imageUsed; } ;


 int AssembleLine () ;
 size_t BSSSEG ;
 size_t DATASEG ;
 int DefaultExtension (char*,char*) ;
 int DefineSymbol (char*,int) ;
 char* ExtractLine (char*) ;
 size_t LITSEG ;
 int LoadFile (char*,void**) ;
 int MAX_OS_PATH ;
 int NUM_SEGMENTS ;
 int WriteMapFile () ;
 int WriteVmFile () ;
 char** asmFileNames ;
 char** asmFiles ;
 int currentFileIndex ;
 scalar_t__ currentFileLine ;
 char* currentFileName ;
 scalar_t__ instructionCount ;
 int numAsmFiles ;
 char* outputFilename ;
 int passNumber ;
 int printf (char*,...) ;
 TYPE_1__* segment ;
 scalar_t__ stackSize ;
 int strcpy (char*,char*) ;

void Assemble( void ) {
 int i;
 char filename[MAX_OS_PATH];
 char *ptr;

 printf( "outputFilename: %s\n", outputFilename );

 for ( i = 0 ; i < numAsmFiles ; i++ ) {
  strcpy( filename, asmFileNames[ i ] );
  DefaultExtension( filename, ".asm" );
  LoadFile( filename, (void **)&asmFiles[i] );
 }


 for ( passNumber = 0 ; passNumber < 2 ; passNumber++ ) {
  segment[LITSEG].segmentBase = segment[DATASEG].imageUsed;
  segment[BSSSEG].segmentBase = segment[LITSEG].segmentBase + segment[LITSEG].imageUsed;
  for ( i = 0 ; i < NUM_SEGMENTS ; i++ ) {
   segment[i].imageUsed = 0;
  }
  segment[DATASEG].imageUsed = 4;
  instructionCount = 0;

  for ( i = 0 ; i < numAsmFiles ; i++ ) {
   currentFileIndex = i;
   currentFileName = asmFileNames[ i ];
   currentFileLine = 0;
   printf("pass %i: %s\n", passNumber, currentFileName );
   ptr = asmFiles[i];
   while ( ptr ) {
    ptr = ExtractLine( ptr );
    AssembleLine();
   }
  }


  for ( i = 0 ; i < NUM_SEGMENTS ; i++ ) {
   segment[i].imageUsed = (segment[i].imageUsed + 3) & ~3;
  }
 }


 DefineSymbol( "_stackStart", segment[BSSSEG].imageUsed );
 segment[BSSSEG].imageUsed += stackSize;
 DefineSymbol( "_stackEnd", segment[BSSSEG].imageUsed );


 WriteVmFile();


 WriteMapFile();
}
