
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DStream ;


 int DEBUGLOG (int,char*) ;
 size_t ZSTD_initDStream_usingDict (int *,int *,int ) ;

size_t ZSTD_initDStream(ZSTD_DStream* zds)
{
    DEBUGLOG(4, "ZSTD_initDStream");
    return ZSTD_initDStream_usingDict(zds, ((void*)0), 0);
}
