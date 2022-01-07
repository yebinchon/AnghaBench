
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int time (int *) ;

int32_t taosGetTimestampSec() { return (int32_t)time(((void*)0)); }
