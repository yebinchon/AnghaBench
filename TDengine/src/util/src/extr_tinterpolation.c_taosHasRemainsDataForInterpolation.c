
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SInterpolationInfo ;


 scalar_t__ taosNumOfRemainPoints (int *) ;

bool taosHasRemainsDataForInterpolation(SInterpolationInfo* pInterpoInfo) { return taosNumOfRemainPoints(pInterpoInfo) > 0; }
