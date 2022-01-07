
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int mpegstm_struct ;
typedef int mpegcon_struct ;
typedef int filter_struct ;
typedef int dirrec_struct ;
typedef int blockregs_struct ;
typedef int block_struct ;
struct TYPE_7__ {int _periodictiming; scalar_t__ mpegstm; scalar_t__ mpegcon; int mpegintmask; int vcounter; int mpegvideostatus; int mpegaudiostatus; int pictureinfo; int actionstatus; scalar_t__ fileinfo; scalar_t__ filter; TYPE_1__* partition; scalar_t__ block; int curdirsect; int blockfreespace; int datasectstotrans; int datatranssectpos; int datanumsecttrans; int datatransoffset; int datatranspartitionnum; int outconhostnum; int outconmpegromnum; int outconmpegbufnum; int outconmpegfbnum; int outconcddevnum; int _commandtiming; int _command; int lastbuffer; int transfileinfo; int isaudio; int speed1x; int isbufferfull; int isdiskchanged; int isonesectorstored; int datatranstype; int infotranstype; int calcsize; int putsectsize; int getsectsize; int playendFAD; int playFAD; scalar_t__ TOC; int cdwnum; int transfercount; int mpgauth; int satauth; int index; int track; int ctrladdr; int repcnt; int options; int status; int FAD; int reg; int carttype; } ;
struct TYPE_6__ {int member_1; int member_0; } ;
struct TYPE_5__ {int numblocks; scalar_t__ blocknum; int size; } ;
typedef TYPE_2__ IOCheck_struct ;
typedef int FILE ;


 TYPE_4__* Cs2Area ;
 int MAX_BLOCKS ;
 int MAX_FILES ;
 int MAX_SELECTORS ;
 int StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 int ywrite (TYPE_2__*,void*,int,int,int *) ;

int Cs2SaveState(FILE * fp) {
   int offset, i;
   IOCheck_struct check = { 0, 0 };



   offset = StateWriteHeader(fp, "CS2 ", 2);


   ywrite(&check, (void *) &Cs2Area->carttype, 4, 1, fp);


   ywrite(&check, (void *) &Cs2Area->reg, sizeof(blockregs_struct), 1, fp);


   ywrite(&check, (void *) &Cs2Area->FAD, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->status, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->options, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->repcnt, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->ctrladdr, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->track, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->index, 1, 1, fp);


   ywrite(&check, (void *) &Cs2Area->satauth, 2, 1, fp);
   ywrite(&check, (void *) &Cs2Area->mpgauth, 2, 1, fp);
   ywrite(&check, (void *) &Cs2Area->transfercount, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->cdwnum, 4, 1, fp);
   ywrite(&check, (void *) Cs2Area->TOC, 4, 102, fp);
   ywrite(&check, (void *) &Cs2Area->playFAD, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->playendFAD, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->getsectsize, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->putsectsize, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->calcsize, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->infotranstype, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->datatranstype, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->isonesectorstored, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->isdiskchanged, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->isbufferfull, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->speed1x, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->isaudio, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->transfileinfo, 1, 12, fp);
   ywrite(&check, (void *) &Cs2Area->lastbuffer, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->_command, 1, 1, fp);
   {
      u32 temp = (Cs2Area->_periodictiming + 3) / 3;
      ywrite(&check, (void *) &temp, 4, 1, fp);
   }
   ywrite(&check, (void *) &Cs2Area->_commandtiming, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->outconcddevnum, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->outconmpegfbnum, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->outconmpegbufnum, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->outconmpegromnum, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->outconhostnum, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->datatranspartitionnum, 1, 1, fp);
   ywrite(&check, (void *) &Cs2Area->datatransoffset, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->datanumsecttrans, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->datatranssectpos, 2, 1, fp);
   ywrite(&check, (void *) &Cs2Area->datasectstotrans, 2, 1, fp);
   ywrite(&check, (void *) &Cs2Area->blockfreespace, 4, 1, fp);
   ywrite(&check, (void *) &Cs2Area->curdirsect, 4, 1, fp);


   ywrite(&check, (void *)Cs2Area->block, sizeof(block_struct), MAX_BLOCKS, fp);


   for (i = 0; i < MAX_SELECTORS; i++)
   {
      ywrite(&check, (void *)&Cs2Area->partition[i].size, 4, 1, fp);
      ywrite(&check, (void *)Cs2Area->partition[i].blocknum, 1, MAX_BLOCKS, fp);
      ywrite(&check, (void *)&Cs2Area->partition[i].numblocks, 1, 1, fp);
   }


   ywrite(&check, (void *)Cs2Area->filter, sizeof(filter_struct), MAX_SELECTORS, fp);


   ywrite(&check, (void *)Cs2Area->fileinfo, sizeof(dirrec_struct), MAX_FILES, fp);




   ywrite(&check, (void *)&Cs2Area->actionstatus, 1, 1, fp);
   ywrite(&check, (void *)&Cs2Area->pictureinfo, 1, 1, fp);
   ywrite(&check, (void *)&Cs2Area->mpegaudiostatus, 1, 1, fp);
   ywrite(&check, (void *)&Cs2Area->mpegvideostatus, 2, 1, fp);
   ywrite(&check, (void *)&Cs2Area->vcounter, 2, 1, fp);


   ywrite(&check, (void *)&Cs2Area->mpegintmask, 4, 1, fp);
   ywrite(&check, (void *)Cs2Area->mpegcon, sizeof(mpegcon_struct), 2, fp);
   ywrite(&check, (void *)Cs2Area->mpegstm, sizeof(mpegstm_struct), 2, fp);

   return StateFinishHeader(fp, offset);
}
