
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int Error (char*,...) ;
 int ExpandGamePath (char const*) ;
 int ExtractFileExtension (char const*,char*) ;
 int Load256Image (int ,int**,int *,int*,int*) ;
 int Load32BitImage (int ,int**,int*,int*) ;
 int Q_stricmp (char*,char*) ;
 char* ValueForKey (int ,char*) ;
 int assert (int*) ;
 int atoi (char*) ;
 int* malloc (int) ;
 int mapent ;

byte *LoadAlphaMap( int *num_layers, int *alphawidth, int *alphaheight ) {
 int *alphamap32;
 byte *alphamap;
 const char *alphamapname;
 char ext[ 128 ];
 int width;
 int height;
 int layers;
 int size;
 int i;

 assert( alphawidth );
 assert( alphaheight );
 assert( num_layers );

 layers = atoi( ValueForKey( mapent, "layers" ) );
 if ( layers < 1 ) {
  Error ("SetTerrainTextures: invalid value for 'layers' (%d)", layers );
 }

 alphamapname = ValueForKey( mapent, "alphamap" );
 if ( !alphamapname[ 0 ] ) {
  Error ("LoadAlphaMap: No alphamap specified on terrain" );
 }

 ExtractFileExtension( alphamapname, ext);
 if ( !Q_stricmp( ext, "tga" ) ) {
  Load32BitImage( ExpandGamePath( alphamapname ), &alphamap32, &width, &height );

  size = width * height;
  alphamap = malloc( size );
  for( i = 0; i < size; i++ ) {
   alphamap[ i ] = ( ( alphamap32[ i ] & 0xff ) * layers ) / 256;
   if ( alphamap[ i ] >= layers ) {
    alphamap[ i ] = layers - 1;
   }
  }
 } else {
  Load256Image( ExpandGamePath( alphamapname ), &alphamap, ((void*)0), &width, &height );
  size = width * height;
  for( i = 0; i < size; i++ ) {
   if ( alphamap[ i ] >= layers ) {
    alphamap[ i ] = layers - 1;
   }
  }
 }

 if ( ( width < 2 ) || ( height < 2 ) ) {
  Error ("LoadAlphaMap: alphamap width/height must be at least 2x2." );
 }

 *num_layers = layers;
 *alphawidth = width;
 *alphaheight = height;

 return alphamap;
}
