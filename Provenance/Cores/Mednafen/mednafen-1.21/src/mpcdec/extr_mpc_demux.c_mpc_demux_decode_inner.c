
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


typedef int mpc_uint32_t ;
typedef int mpc_status ;
typedef void* mpc_seek_t ;
typedef int mpc_int_t ;
struct TYPE_20__ {int bits; int is_key_frame; } ;
typedef TYPE_3__ mpc_frame_info ;
struct TYPE_23__ {int count; scalar_t__ buff; } ;
struct TYPE_19__ {int stream_version; int block_pwr; } ;
struct TYPE_21__ {int block_frames; int seek_table_size; int seek_pwr; int block_bits; int buffer; int bytes_total; TYPE_6__ bits_reader; TYPE_11__* d; void** seek_table; TYPE_2__ si; } ;
typedef TYPE_4__ mpc_demux ;
struct TYPE_18__ {int member_1; int member_0; } ;
struct TYPE_22__ {scalar_t__ size; int key; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_5__ mpc_block ;
typedef TYPE_6__ mpc_bits_reader ;
struct TYPE_17__ {int decoded_samples; int samples; } ;


 int MAX_FRAME_SIZE ;
 int MPC_AUTO_FAIL (int ) ;
 int MPC_BUFFER_FULL ;
 int MPC_BUFFER_SWAP ;
 int MPC_FALSE ;
 int MPC_FRAME_LENGTH ;
 int MPC_STATUS_FAIL ;
 int MPC_STATUS_OK ;
 int MPC_TRUE ;
 scalar_t__ memcmp (int ,char*,int) ;
 int mpc_bits_get_block (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ mpc_bits_read (TYPE_6__*,int) ;
 int mpc_check_key (int ) ;
 int mpc_decoder_decode_frame (TYPE_11__*,TYPE_6__*,TYPE_3__*) ;
 scalar_t__ mpc_demux_fill (TYPE_4__*,int,int) ;
 scalar_t__ mpc_demux_pos (TYPE_4__*) ;

__attribute__((used)) static mpc_status mpc_demux_decode_inner(mpc_demux * d, mpc_frame_info * i)
{
 mpc_bits_reader r;
 if (d->si.stream_version >= 8) {
  i->is_key_frame = MPC_FALSE;

  if (d->block_frames == 0) {
   mpc_block b = {{0,0},0};
   d->bits_reader.count &= -8;
   if (d->d->decoded_samples == (d->seek_table_size << d->seek_pwr) * MPC_FRAME_LENGTH) {
    d->seek_table[d->seek_table_size] = (mpc_seek_t) mpc_demux_pos(d);
    d->seek_table_size ++;
   }
   mpc_demux_fill(d, 11, MPC_BUFFER_FULL);
   mpc_bits_get_block(&d->bits_reader, &b);
   while( memcmp(b.key, "AP", 2) != 0 ) {
    MPC_AUTO_FAIL( mpc_check_key(b.key) );

    if (memcmp(b.key, "SE", 2) == 0) {
     i->bits = -1;
     return MPC_STATUS_OK;
    }

    if (mpc_demux_fill(d, 11 + (mpc_uint32_t) b.size, MPC_BUFFER_FULL) < b.size)
     return MPC_STATUS_FAIL;

    d->bits_reader.buff += b.size;
    mpc_bits_get_block(&d->bits_reader, &b);
   }
   d->block_bits = (mpc_uint32_t) b.size * 8;
   d->block_frames = 1 << d->si.block_pwr;
   i->is_key_frame = MPC_TRUE;
  }
  if (d->buffer + d->bytes_total - d->bits_reader.buff <= MAX_FRAME_SIZE)
   mpc_demux_fill(d, (d->block_bits >> 3) + 1, MPC_BUFFER_FULL);
  r = d->bits_reader;
  mpc_decoder_decode_frame(d->d, &d->bits_reader, i);
  d->block_bits -= ((d->bits_reader.buff - r.buff) << 3) + r.count - d->bits_reader.count;
  d->block_frames--;
  if (d->block_bits < 0 || (d->block_frames == 0 && d->block_bits > 7))
   return MPC_STATUS_FAIL;
 } else {
  if (d->d->decoded_samples == (d->seek_table_size << d->seek_pwr) * MPC_FRAME_LENGTH) {
   d->seek_table[d->seek_table_size] = (mpc_seek_t) mpc_demux_pos(d);
   d->seek_table_size ++;
  }
  mpc_demux_fill(d, MAX_FRAME_SIZE, MPC_BUFFER_FULL | MPC_BUFFER_SWAP);
  d->block_bits = (mpc_int_t) mpc_bits_read(&d->bits_reader, 20);
  if (MPC_FRAME_LENGTH > d->d->samples - d->d->decoded_samples - 1) d->block_bits += 11;
  r = d->bits_reader;
  mpc_decoder_decode_frame(d->d, &d->bits_reader, i);
  if (i->bits != -1 && d->block_bits != ((d->bits_reader.buff - r.buff) << 3) + r.count - d->bits_reader.count)
   return MPC_STATUS_FAIL;
 }
 if (i->bits != -1 && d->buffer + d->bytes_total < d->bits_reader.buff + ((8 - d->bits_reader.count) >> 3))
  return MPC_STATUS_FAIL;

 return MPC_STATUS_OK;
}
