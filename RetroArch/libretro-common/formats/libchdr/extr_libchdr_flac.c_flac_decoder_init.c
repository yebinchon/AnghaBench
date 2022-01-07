
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uncompressed_swap; scalar_t__ uncompressed_length; scalar_t__ uncompressed_offset; scalar_t__ compressed2_length; int * compressed2_start; scalar_t__ compressed_length; int * compressed_start; scalar_t__ compressed_offset; scalar_t__ bits_per_sample; scalar_t__ channels; scalar_t__ sample_rate; int decoder; } ;
typedef TYPE_1__ flac_decoder ;


 int FLAC__stream_decoder_new () ;

void flac_decoder_init(flac_decoder *decoder)
{
 decoder->decoder = FLAC__stream_decoder_new();
 decoder->sample_rate = 0;
 decoder->channels = 0;
 decoder->bits_per_sample = 0;
 decoder->compressed_offset = 0;
 decoder->compressed_start = ((void*)0);
 decoder->compressed_length = 0;
 decoder->compressed2_start = ((void*)0);
 decoder->compressed2_length = 0;
 decoder->uncompressed_offset = 0;
 decoder->uncompressed_length = 0;
 decoder->uncompressed_swap = 0;
}
