
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vibrato_core {int size; int samplerate; float freq; float depth; scalar_t__ writeindex; scalar_t__ phase; int buffer; } ;


 int BASE_DELAY_SEC ;
 int add_delay ;
 int malloc (int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void vibratocore_init(struct vibrato_core *core,float depth,int samplerate,float freq)
{
 core->size = BASE_DELAY_SEC * samplerate * 2;
 core->buffer = malloc((core->size + add_delay)*sizeof(float));
 memset(core->buffer, 0, (core->size + add_delay) * sizeof(float));
 core->samplerate = samplerate;
 core->freq = freq;
 core->depth = depth;
 core->phase = 0;
 core->writeindex = 0;
}
