
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mpc_uint8_t ;
typedef int mpc_int32_t ;
struct TYPE_9__ {int buff; } ;
struct TYPE_7__ {TYPE_2__* r; TYPE_6__ bits_reader; } ;
typedef TYPE_1__ mpc_demux ;
typedef int mpc_bool_t ;
struct TYPE_8__ {int (* seek ) (TYPE_2__*,int) ;} ;


 int MPC_STATUS_FAIL ;
 scalar_t__ memcmp (int ,char*,int) ;
 int mpc_bits_read (TYPE_6__*,int) ;
 int mpc_demux_clear_buff (TYPE_1__*) ;
 int mpc_demux_fill (TYPE_1__*,int,int ) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static mpc_int32_t mpc_demux_skip_id3v2(mpc_demux * d)
{
 mpc_uint8_t tmp [4];
 mpc_bool_t footerPresent;
 mpc_int32_t size;


 mpc_demux_fill(d, 3, 0);


 if ( 0 != memcmp( d->bits_reader.buff, "ID3", 3 ) )
  return 0;

 mpc_demux_fill(d, 10, 0);

 mpc_bits_read(&d->bits_reader, 24);
 mpc_bits_read(&d->bits_reader, 16);

 tmp[0] = mpc_bits_read(&d->bits_reader, 8);
 footerPresent = tmp[0] & 0x10;
 if ( tmp[0] & 0x0F )
  return MPC_STATUS_FAIL;

 tmp[0] = mpc_bits_read(&d->bits_reader, 8);
 tmp[1] = mpc_bits_read(&d->bits_reader, 8);
 tmp[2] = mpc_bits_read(&d->bits_reader, 8);
 tmp[3] = mpc_bits_read(&d->bits_reader, 8);

 if ( (tmp[0] | tmp[1] | tmp[2] | tmp[3]) & 0x80 )
  return MPC_STATUS_FAIL;


 size = tmp[0] << 21;
 size |= tmp[1] << 14;
 size |= tmp[2] << 7;
 size |= tmp[3];

 size += 10;

 if ( footerPresent ) size += 10;


 mpc_demux_clear_buff(d);
 if (!d->r->seek(d->r, size))
  return MPC_STATUS_FAIL;

 return size;
}
