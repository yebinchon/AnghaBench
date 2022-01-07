
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int httpJsonString (int *,char*,int) ;

void httpJsonNull(JsonBuf* buf) { httpJsonString(buf, "null", 4); }
