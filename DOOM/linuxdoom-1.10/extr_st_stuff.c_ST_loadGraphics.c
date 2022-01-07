
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int patch_t ;


 int NUMCARDS ;
 int PU_STATIC ;
 int ST_NUMPAINFACES ;
 int ST_NUMSTRAIGHTFACES ;
 scalar_t__ W_CacheLumpName (char*,int ) ;
 int *** arms ;
 int * armsbg ;
 int consoleplayer ;
 int * faceback ;
 scalar_t__* faces ;
 int ** keys ;
 int * sbar ;
 int ** shortnum ;
 int sprintf (char*,char*,int,...) ;
 int ** tallnum ;
 int * tallpercent ;

void ST_loadGraphics(void)
{

    int i;
    int j;
    int facenum;

    char namebuf[9];


    for (i=0;i<10;i++)
    {
 sprintf(namebuf, "STTNUM%d", i);
 tallnum[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);

 sprintf(namebuf, "STYSNUM%d", i);
 shortnum[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
    }



    tallpercent = (patch_t *) W_CacheLumpName("STTPRCNT", PU_STATIC);


    for (i=0;i<NUMCARDS;i++)
    {
 sprintf(namebuf, "STKEYS%d", i);
 keys[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
    }


    armsbg = (patch_t *) W_CacheLumpName("STARMS", PU_STATIC);


    for (i=0;i<6;i++)
    {
 sprintf(namebuf, "STGNUM%d", i+2);


 arms[i][0] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);


 arms[i][1] = shortnum[i+2];
    }


    sprintf(namebuf, "STFB%d", consoleplayer);
    faceback = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);


    sbar = (patch_t *) W_CacheLumpName("STBAR", PU_STATIC);


    facenum = 0;
    for (i=0;i<ST_NUMPAINFACES;i++)
    {
 for (j=0;j<ST_NUMSTRAIGHTFACES;j++)
 {
     sprintf(namebuf, "STFST%d%d", i, j);
     faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
 }
 sprintf(namebuf, "STFTR%d0", i);
 faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
 sprintf(namebuf, "STFTL%d0", i);
 faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
 sprintf(namebuf, "STFOUCH%d", i);
 faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
 sprintf(namebuf, "STFEVL%d", i);
 faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
 sprintf(namebuf, "STFKILL%d", i);
 faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
    }
    faces[facenum++] = W_CacheLumpName("STFGOD0", PU_STATIC);
    faces[facenum++] = W_CacheLumpName("STFDEAD0", PU_STATIC);

}
