
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__real ;
typedef int FLAC__int32 ;



void FLAC__lpc_window_data(const FLAC__int32 in[], const FLAC__real window[], FLAC__real out[], unsigned data_len)
{
 unsigned i;
 for(i = 0; i < data_len; i++)
  out[i] = in[i] * window[i];
}
