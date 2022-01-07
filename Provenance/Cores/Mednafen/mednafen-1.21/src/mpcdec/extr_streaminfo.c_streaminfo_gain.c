
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* mpc_uint16_t ;
struct TYPE_3__ {void* peak_album; void* gain_album; void* peak_title; void* gain_title; } ;
typedef TYPE_1__ mpc_streaminfo ;
typedef int mpc_bits_reader ;


 int mpc_bits_read (int *,int) ;

void streaminfo_gain(mpc_streaminfo* si, const mpc_bits_reader * r_in)
{
 mpc_bits_reader r = *r_in;

 int version = mpc_bits_read(&r, 8);
 if (version != 1)
  return;
 si->gain_title = (mpc_uint16_t) mpc_bits_read(&r, 16);
 si->peak_title = (mpc_uint16_t) mpc_bits_read(&r, 16);
 si->gain_album = (mpc_uint16_t) mpc_bits_read(&r, 16);
 si->peak_album = (mpc_uint16_t) mpc_bits_read(&r, 16);
}
