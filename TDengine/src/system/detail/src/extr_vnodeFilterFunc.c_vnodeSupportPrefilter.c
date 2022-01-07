
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;

bool vnodeSupportPrefilter(int32_t type) { return type != TSDB_DATA_TYPE_BINARY && type != TSDB_DATA_TYPE_NCHAR; }
