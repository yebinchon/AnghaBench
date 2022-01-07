
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_data {int threads; } ;



__attribute__((used)) static unsigned darken_threads(void *data)
{
   struct filter_data *filt = (struct filter_data*)data;
   return filt->threads;
}
