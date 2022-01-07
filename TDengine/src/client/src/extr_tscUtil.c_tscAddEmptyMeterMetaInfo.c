
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSqlCmd ;
typedef int SMeterMetaInfo ;


 int * tscAddMeterMetaInfo (int *,int *,int *,int *,int ,int *) ;

SMeterMetaInfo* tscAddEmptyMeterMetaInfo(SSqlCmd* pCmd) { return tscAddMeterMetaInfo(pCmd, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0)); }
