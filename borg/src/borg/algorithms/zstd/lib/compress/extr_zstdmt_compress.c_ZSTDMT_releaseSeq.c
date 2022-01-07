
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rawSeqStore_t ;
typedef int ZSTDMT_seqPool ;


 int ZSTDMT_releaseBuffer (int *,int ) ;
 int seqToBuffer (int ) ;

__attribute__((used)) static void ZSTDMT_releaseSeq(ZSTDMT_seqPool* seqPool, rawSeqStore_t seq)
{
  ZSTDMT_releaseBuffer(seqPool, seqToBuffer(seq));
}
