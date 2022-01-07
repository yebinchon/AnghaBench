
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
typedef int s32 ;
struct TYPE_6__ {TYPE_1__* descriptors; } ;
struct TYPE_5__ {int point; int control; int adr; int p; } ;
typedef TYPE_1__ CDTOCDescriptor ;
typedef TYPE_2__ CDTOC ;


 int CDConvertMSFToLBA (int ) ;
 int CDTOCGetDescriptorCount (TYPE_2__*) ;
 TYPE_2__* GetTOCFromCDPath () ;
 int memset (int*,int,int) ;

__attribute__((used)) static s32 MacOSXCDReadTOC(u32 *TOC)
{
   int add150 = 150, tracks = 0;
 u_char track;
 int i, fad = 0;
 CDTOC *cdTOC = GetTOCFromCDPath();
 CDTOCDescriptor *pTrackDescriptors;
 pTrackDescriptors = cdTOC->descriptors;

 memset(TOC, 0xFF, 0xCC * 2);


 for( i = 3; i < CDTOCGetDescriptorCount(cdTOC); i++ ) {
         track = pTrackDescriptors[i].point;
  fad = CDConvertMSFToLBA(pTrackDescriptors[i].p) + add150;
  if ((track > 99) || (track < 1))
   continue;
  TOC[i-3] = (pTrackDescriptors[i].control << 28 | pTrackDescriptors[i].adr << 24 | fad);
  tracks++;
 }


 TOC[99] = pTrackDescriptors[0].control << 28 | pTrackDescriptors[0].adr << 24 | 1 << 16;

 TOC[100] = pTrackDescriptors[1].control << 28 | pTrackDescriptors[1].adr << 24 | tracks << 16;

 TOC[101] = pTrackDescriptors[2].control << 28 | pTrackDescriptors[2].adr << 24 | CDConvertMSFToLBA(pTrackDescriptors[2].p) + add150;


 return (0xCC * 2);
}
