
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int STaosDigest ;


 scalar_t__ tsRpcHeadSize ;

__attribute__((used)) static int32_t minMsgSize() { return tsRpcHeadSize + sizeof(STaosDigest); }
