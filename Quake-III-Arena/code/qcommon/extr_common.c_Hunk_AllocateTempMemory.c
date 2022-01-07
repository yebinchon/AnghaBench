
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int magic; } ;
typedef TYPE_1__ hunkHeader_t ;
struct TYPE_7__ {int permanent; } ;
struct TYPE_6__ {scalar_t__ temp; int * tempHighwater; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int HUNK_MAGIC ;
 int Hunk_SwapBanks () ;
 void* Z_Malloc (int) ;
 TYPE_2__ hunk_low ;
 TYPE_3__* hunk_permanent ;
 TYPE_2__* hunk_temp ;
 int * s_hunkData ;
 scalar_t__ s_hunkTotal ;

void *Hunk_AllocateTempMemory( int size ) {
 void *buf;
 hunkHeader_t *hdr;





 if ( s_hunkData == ((void*)0) )
 {
  return Z_Malloc(size);
 }

 Hunk_SwapBanks();

 size = ( (size+3)&~3 ) + sizeof( hunkHeader_t );

 if ( hunk_temp->temp + hunk_permanent->permanent + size > s_hunkTotal ) {
  Com_Error( ERR_DROP, "Hunk_AllocateTempMemory: failed on %i", size );
 }

 if ( hunk_temp == &hunk_low ) {
  buf = (void *)(s_hunkData + hunk_temp->temp);
  hunk_temp->temp += size;
 } else {
  hunk_temp->temp += size;
  buf = (void *)(s_hunkData + s_hunkTotal - hunk_temp->temp );
 }

 if ( hunk_temp->temp > hunk_temp->tempHighwater ) {
  hunk_temp->tempHighwater = hunk_temp->temp;
 }

 hdr = (hunkHeader_t *)buf;
 buf = (void *)(hdr+1);

 hdr->magic = HUNK_MAGIC;
 hdr->size = size;


 return buf;
}
