
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int raw ;
typedef int byte ;
struct TYPE_6__ {int speed; } ;
struct TYPE_5__ {int rate; int width; int channels; } ;
struct TYPE_4__ {int value; } ;


 int Com_Printf (char*) ;
 int FS_FCloseFile (scalar_t__) ;
 scalar_t__ MAX_RAW_SAMPLES ;
 int S_ByteSwapRawSamples (int,int,int,int *) ;
 int S_RawSamples (int,int,int,int,int *,float) ;
 int S_StartBackgroundTrack (scalar_t__*,scalar_t__*) ;
 int S_StopBackgroundTrack () ;
 int Sys_EndStreamedFile (scalar_t__) ;
 int Sys_StreamedRead (int *,int,int,scalar_t__) ;
 TYPE_3__ dma ;
 scalar_t__ s_backgroundFile ;
 TYPE_2__ s_backgroundInfo ;
 scalar_t__* s_backgroundLoop ;
 int s_backgroundSamples ;
 TYPE_1__* s_musicVolume ;
 scalar_t__ s_rawend ;
 scalar_t__ s_soundtime ;

void S_UpdateBackgroundTrack( void ) {
 int bufferSamples;
 int fileSamples;
 byte raw[30000];
 int fileBytes;
 int r;
 static float musicVolume = 0.5f;

 if ( !s_backgroundFile ) {
  return;
 }


 musicVolume = (musicVolume + (s_musicVolume->value * 2))/4.0f;


 if ( musicVolume <= 0 ) {
  return;
 }


 if ( s_rawend < s_soundtime ) {
  s_rawend = s_soundtime;
 }

 while ( s_rawend < s_soundtime + MAX_RAW_SAMPLES ) {
  bufferSamples = MAX_RAW_SAMPLES - (s_rawend - s_soundtime);


  fileSamples = bufferSamples * s_backgroundInfo.rate / dma.speed;


  if ( fileSamples > s_backgroundSamples ) {
   fileSamples = s_backgroundSamples;
  }


  fileBytes = fileSamples * (s_backgroundInfo.width * s_backgroundInfo.channels);
  if ( fileBytes > sizeof(raw) ) {
   fileBytes = sizeof(raw);
   fileSamples = fileBytes / (s_backgroundInfo.width * s_backgroundInfo.channels);
  }

  r = Sys_StreamedRead( raw, 1, fileBytes, s_backgroundFile );
  if ( r != fileBytes ) {
   Com_Printf("StreamedRead failure on music track\n");
   S_StopBackgroundTrack();
   return;
  }


  S_ByteSwapRawSamples( fileSamples, s_backgroundInfo.width, s_backgroundInfo.channels, raw );


  S_RawSamples( fileSamples, s_backgroundInfo.rate,
   s_backgroundInfo.width, s_backgroundInfo.channels, raw, musicVolume );

  s_backgroundSamples -= fileSamples;
  if ( !s_backgroundSamples ) {

   if (s_backgroundLoop[0]) {
    Sys_EndStreamedFile( s_backgroundFile );
    FS_FCloseFile( s_backgroundFile );
    s_backgroundFile = 0;
    S_StartBackgroundTrack( s_backgroundLoop, s_backgroundLoop );
    if ( !s_backgroundFile ) {
     return;
    }
   } else {
    s_backgroundFile = 0;
    return;
   }
  }
 }
}
