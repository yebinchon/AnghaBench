
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct AFILE_ATR_Header {void* hiseccounthi; void* hiseccountlo; void* seccounthi; void* seccountlo; void* secsizehi; void* secsizelo; int magic2; int magic1; } ;
typedef int header ;
typedef int ULONG ;
typedef void* UBYTE ;
struct TYPE_3__ {int sectorcount; int sectorsize; int fp; } ;
typedef TYPE_1__ ATR_Info ;


 int AFILE_ATR_MAGIC1 ;
 int AFILE_ATR_MAGIC2 ;
 int fsave (struct AFILE_ATR_Header*,int,int ) ;
 int memset (struct AFILE_ATR_Header*,int ,int) ;

__attribute__((used)) static int write_atr_header(const ATR_Info *pai)
{
 int sectorcount;
 int sectorsize;
 ULONG paras;
 struct AFILE_ATR_Header header;
 sectorcount = pai->sectorcount;
 sectorsize = pai->sectorsize;
 paras = (sectorsize != 256 || sectorcount <= 3)
  ? (sectorcount << 3)
  : (sectorcount << 4) - 0x18;
 memset(&header, 0, sizeof(header));
 header.magic1 = AFILE_ATR_MAGIC1;
 header.magic2 = AFILE_ATR_MAGIC2;
 header.secsizelo = (UBYTE) sectorsize;
 header.secsizehi = (UBYTE) (sectorsize >> 8);
 header.seccountlo = (UBYTE) paras;
 header.seccounthi = (UBYTE) (paras >> 8);
 header.hiseccountlo = (UBYTE) (paras >> 16);
 header.hiseccounthi = (UBYTE) (paras >> 24);
 return fsave(&header, sizeof(header), pai->fp);
}
