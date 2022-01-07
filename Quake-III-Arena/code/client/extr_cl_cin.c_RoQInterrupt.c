
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {int* file; scalar_t__ linbuf; scalar_t__* qStatus; } ;
struct TYPE_5__ {int RoQFrameSize; scalar_t__ RoQPlayed; scalar_t__ ROQSize; scalar_t__ holdAtEnd; scalar_t__ status; int roq_id; int numQuads; char roqF0; char roqF1; int samplesPerLine; int ysize; int roq_flags; int startTime; int lastTime; int inMemory; scalar_t__ looping; int silent; int dirty; scalar_t__ screenDelta; scalar_t__ buf; int (* VQ0 ) (int*,int*) ;int * t; int normalBuffer0; int (* VQ1 ) (int*,int*) ;int iFile; } ;
struct TYPE_4__ {int value; } ;


 int CL_ScaledMilliseconds () ;
 int Com_DPrintf (char*) ;
 int Com_Memcpy (scalar_t__,scalar_t__,int) ;
 scalar_t__ FMV_EOF ;
 void* FMV_IDLE ;






 int RllDecodeMonoToStereo (int*,short*,int,int ,unsigned short) ;
 int RllDecodeStereoToStereo (int*,short*,int,int ,unsigned short) ;
 int RoQPrepMcomp (char,char) ;
 int RoQReset () ;
 int S_RawSamples (int,int,int,int,int*,float) ;
 int S_Update () ;
 int Sys_StreamedRead (int*,int,int,int ) ;


 TYPE_3__ cin ;
 TYPE_2__* cinTable ;
 TYPE_1__* com_timescale ;
 size_t currentHandle ;
 int decodeCodeBook (int*,unsigned short) ;
 scalar_t__ qfalse ;
 int qtrue ;
 int readQuadInfo (int*) ;
 int s_rawend ;
 int s_soundtime ;
 int setupQuad (int ,int ) ;
 int stub1 (int*,int*) ;
 int stub2 (int*,int*) ;

__attribute__((used)) static void RoQInterrupt(void)
{
 byte *framedata;
        short sbuf[32768];
        int ssize;

 if (currentHandle < 0) return;

 Sys_StreamedRead( cin.file, cinTable[currentHandle].RoQFrameSize+8, 1, cinTable[currentHandle].iFile );
 if ( cinTable[currentHandle].RoQPlayed >= cinTable[currentHandle].ROQSize ) {
  if (cinTable[currentHandle].holdAtEnd==qfalse) {
   if (cinTable[currentHandle].looping) {
    RoQReset();
   } else {
    cinTable[currentHandle].status = FMV_EOF;
   }
  } else {
   cinTable[currentHandle].status = FMV_IDLE;
  }
  return;
 }

 framedata = cin.file;



redump:
 switch(cinTable[currentHandle].roq_id)
 {
  case 130:
   if ((cinTable[currentHandle].numQuads&1)) {
    cinTable[currentHandle].normalBuffer0 = cinTable[currentHandle].t[1];
    RoQPrepMcomp( cinTable[currentHandle].roqF0, cinTable[currentHandle].roqF1 );
    cinTable[currentHandle].VQ1( (byte *)cin.qStatus[1], framedata);
    cinTable[currentHandle].buf = cin.linbuf + cinTable[currentHandle].screenDelta;
   } else {
    cinTable[currentHandle].normalBuffer0 = cinTable[currentHandle].t[0];
    RoQPrepMcomp( cinTable[currentHandle].roqF0, cinTable[currentHandle].roqF1 );
    cinTable[currentHandle].VQ0( (byte *)cin.qStatus[0], framedata );
    cinTable[currentHandle].buf = cin.linbuf;
   }
   if (cinTable[currentHandle].numQuads == 0) {
    Com_Memcpy(cin.linbuf+cinTable[currentHandle].screenDelta, cin.linbuf, cinTable[currentHandle].samplesPerLine*cinTable[currentHandle].ysize);
   }
   cinTable[currentHandle].numQuads++;
   cinTable[currentHandle].dirty = qtrue;
   break;
  case 135:
   decodeCodeBook( framedata, (unsigned short)cinTable[currentHandle].roq_flags );
   break;
  case 129:
   if (!cinTable[currentHandle].silent) {
    ssize = RllDecodeMonoToStereo( framedata, sbuf, cinTable[currentHandle].RoQFrameSize, 0, (unsigned short)cinTable[currentHandle].roq_flags);
                                S_RawSamples( ssize, 22050, 2, 1, (byte *)sbuf, 1.0f );
   }
   break;
  case 128:
   if (!cinTable[currentHandle].silent) {
    if (cinTable[currentHandle].numQuads == -1) {
     S_Update();
     s_rawend = s_soundtime;
    }
    ssize = RllDecodeStereoToStereo( framedata, sbuf, cinTable[currentHandle].RoQFrameSize, 0, (unsigned short)cinTable[currentHandle].roq_flags);
                                S_RawSamples( ssize, 22050, 2, 2, (byte *)sbuf, 1.0f );
   }
   break;
  case 132:
   if (cinTable[currentHandle].numQuads == -1) {
    readQuadInfo( framedata );
    setupQuad( 0, 0 );

    cinTable[currentHandle].startTime = cinTable[currentHandle].lastTime = CL_ScaledMilliseconds()*com_timescale->value;
   }
   if (cinTable[currentHandle].numQuads != 1) cinTable[currentHandle].numQuads = 0;
   break;
  case 134:
   cinTable[currentHandle].inMemory = cinTable[currentHandle].roq_flags;
   cinTable[currentHandle].RoQFrameSize = 0;
   break;
  case 133:
   cinTable[currentHandle].RoQFrameSize = 0;
   break;
  case 131:
   break;
  default:
   cinTable[currentHandle].status = FMV_EOF;
   break;
 }



 if ( cinTable[currentHandle].RoQPlayed >= cinTable[currentHandle].ROQSize ) {
  if (cinTable[currentHandle].holdAtEnd==qfalse) {
   if (cinTable[currentHandle].looping) {
    RoQReset();
   } else {
    cinTable[currentHandle].status = FMV_EOF;
   }
  } else {
   cinTable[currentHandle].status = FMV_IDLE;
  }
  return;
 }

 framedata += cinTable[currentHandle].RoQFrameSize;
 cinTable[currentHandle].roq_id = framedata[0] + framedata[1]*256;
 cinTable[currentHandle].RoQFrameSize = framedata[2] + framedata[3]*256 + framedata[4]*65536;
 cinTable[currentHandle].roq_flags = framedata[6] + framedata[7]*256;
 cinTable[currentHandle].roqF0 = (char)framedata[7];
 cinTable[currentHandle].roqF1 = (char)framedata[6];

 if (cinTable[currentHandle].RoQFrameSize>65536||cinTable[currentHandle].roq_id==0x1084) {
  Com_DPrintf("roq_size>65536||roq_id==0x1084\n");
  cinTable[currentHandle].status = FMV_EOF;
  if (cinTable[currentHandle].looping) {
   RoQReset();
  }
  return;
 }
 if (cinTable[currentHandle].inMemory && (cinTable[currentHandle].status != FMV_EOF)) { cinTable[currentHandle].inMemory--; framedata += 8; goto redump; }





 cinTable[currentHandle].RoQPlayed += cinTable[currentHandle].RoQFrameSize+8;
}
