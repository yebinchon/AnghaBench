
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int texinfo_t ;
typedef int dheader_t ;
struct TYPE_8__ {scalar_t__ ident; scalar_t__ version; TYPE_1__* lumps; } ;
struct TYPE_7__ {int filelen; int fileofs; } ;
typedef int FILE ;


 scalar_t__ BSPVERSION ;
 int Error (char*,char*,...) ;
 int FreeMemory (TYPE_2__*) ;
 TYPE_2__* GetMemory (int) ;
 scalar_t__ IDBSPHEADER ;
 size_t LUMP_TEXINFO ;
 int LittleLong (int) ;
 int Q2_SwapBSPFile (int) ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (TYPE_2__*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 TYPE_2__* header ;
 int numtexinfo ;
 TYPE_2__* texinfo ;

void Q2_LoadBSPFileTexinfo (char *filename)
{
 int i;
 FILE *f;
 int length, ofs;

 header = GetMemory(sizeof(dheader_t));

 f = fopen (filename, "rb");
 fread (header, sizeof(dheader_t), 1, f);


 for (i=0 ; i< sizeof(dheader_t)/4 ; i++)
  ((int *)header)[i] = LittleLong ( ((int *)header)[i]);

 if (header->ident != IDBSPHEADER)
  Error ("%s is not a IBSP file", filename);
 if (header->version != BSPVERSION)
  Error ("%s is version %i, not %i", filename, header->version, BSPVERSION);


 length = header->lumps[LUMP_TEXINFO].filelen;
 ofs = header->lumps[LUMP_TEXINFO].fileofs;

 fseek (f, ofs, SEEK_SET);
 fread (texinfo, length, 1, f);
 fclose (f);

 numtexinfo = length / sizeof(texinfo_t);

 FreeMemory(header);

 Q2_SwapBSPFile (0);
}
