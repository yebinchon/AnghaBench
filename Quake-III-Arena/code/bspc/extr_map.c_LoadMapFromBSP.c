
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct quakefile_s {int length; int offset; int filename; } ;
struct TYPE_3__ {int ident; int version; } ;
typedef TYPE_1__ idheader_t ;


 int Error (char*,int,int,int,int,scalar_t__) ;
 int HL_AllocMaxBSP () ;
 int HL_BSPVERSION ;
 int HL_FreeMaxBSP () ;
 int HL_LoadMapFromBSP (int ,int ,int ) ;
 void* LittleLong (int) ;
 int Q1_AllocMaxBSP () ;
 int Q1_BSPVERSION ;
 int Q1_FreeMaxBSP () ;
 int Q1_LoadMapFromBSP (int ,int ,int ) ;
 int Q2_AllocMaxBSP () ;
 int Q2_BSPHEADER ;
 scalar_t__ Q2_BSPVERSION ;
 int Q2_FreeMaxBSP () ;
 int Q2_LoadMapFromBSP (int ,int ,int ) ;
 int Q3_BSP_IDENT ;
 scalar_t__ Q3_BSP_VERSION ;
 int Q3_FreeMaxBSP () ;
 int Q3_LoadMapFromBSP (struct quakefile_s*) ;
 int ReadQuakeFile (struct quakefile_s*,TYPE_1__*,int ,int) ;
 int ResetMapLoading () ;
 int SINGAME_BSPHEADER ;
 scalar_t__ SINGAME_BSPVERSION ;
 int SIN_BSPHEADER ;
 scalar_t__ SIN_BSPVERSION ;
 int Sin_AllocMaxBSP () ;
 int Sin_FreeMaxBSP () ;
 int Sin_LoadMapFromBSP (int ,int ,int ) ;

int LoadMapFromBSP(struct quakefile_s *qf)
{
 idheader_t idheader;

 if (ReadQuakeFile(qf, &idheader, 0, sizeof(idheader_t)) != sizeof(idheader_t))
 {
  return 0;
 }

 idheader.ident = LittleLong(idheader.ident);
 idheader.version = LittleLong(idheader.version);

 if (idheader.ident == Q3_BSP_IDENT && idheader.version == Q3_BSP_VERSION)
 {
  ResetMapLoading();
  Q3_LoadMapFromBSP(qf);
  Q3_FreeMaxBSP();
 }

 else if (idheader.ident == Q2_BSPHEADER && idheader.version == Q2_BSPVERSION)
 {
  ResetMapLoading();
  Q2_AllocMaxBSP();
  Q2_LoadMapFromBSP(qf->filename, qf->offset, qf->length);
  Q2_FreeMaxBSP();
 }

 else if ((idheader.ident == SIN_BSPHEADER && idheader.version == SIN_BSPVERSION) ||

    (idheader.ident == SINGAME_BSPHEADER && idheader.version == SINGAME_BSPVERSION))
 {
  ResetMapLoading();
  Sin_AllocMaxBSP();
  Sin_LoadMapFromBSP(qf->filename, qf->offset, qf->length);
  Sin_FreeMaxBSP();
 }

 else if (idheader.ident == Q1_BSPVERSION)
 {
  ResetMapLoading();
  Q1_AllocMaxBSP();
  Q1_LoadMapFromBSP(qf->filename, qf->offset, qf->length);
  Q1_FreeMaxBSP();
 }

 else if (idheader.ident == HL_BSPVERSION)
 {
  ResetMapLoading();
  HL_AllocMaxBSP();
  HL_LoadMapFromBSP(qf->filename, qf->offset, qf->length);
  HL_FreeMaxBSP();
 }
 else
 {
  Error("unknown BSP format %c%c%c%c, version %d\n",
          (idheader.ident & 0xFF),
          ((idheader.ident >> 8) & 0xFF),
          ((idheader.ident >> 16) & 0xFF),
          ((idheader.ident >> 24) & 0xFF), idheader.version);
  return 0;
 }

 return 1;
}
