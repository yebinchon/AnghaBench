
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int profile; int pns; int encoder_version; int profile_name; } ;
typedef TYPE_1__ mpc_streaminfo ;
typedef int mpc_bits_reader ;


 int mpc_bits_read (int *,int) ;
 int mpc_get_encoder_string (TYPE_1__*) ;
 int mpc_get_version_string (int) ;

void streaminfo_encoder_info(mpc_streaminfo* si, const mpc_bits_reader * r_in)
{
 mpc_bits_reader r = *r_in;

 si->profile = mpc_bits_read(&r, 7) / 8.;
 si->profile_name = mpc_get_version_string(si->profile);
 si->pns = mpc_bits_read(&r, 1);
 si->encoder_version = mpc_bits_read(&r, 8) << 24;
 si->encoder_version |= mpc_bits_read(&r, 8) << 16;
 si->encoder_version |= mpc_bits_read(&r, 8) << 8;


 mpc_get_encoder_string(si);
}
