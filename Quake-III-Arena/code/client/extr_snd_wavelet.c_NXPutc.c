
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char NXStream ;


 int NXStreamCount ;

void NXPutc(NXStream *stream, char out) {
 stream[NXStreamCount++] = out;
}
