
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_8__ {scalar_t__ direction; int status; scalar_t__ seq_n_0_cln; scalar_t__ ack_cln; scalar_t__ ack_srv; TYPE_1__ last_timestamp; TYPE_1__ timestamp_block; scalar_t__ seq_n_0_srv; TYPE_1__ syn_ack_timestamp; TYPE_1__ syn_timestamp; int bytes_srv_to_cln; int pkts_srv_to_cln; int bytes_cln_to_srv; int pkts_cln_to_srv; } ;
typedef TYPE_2__ tcp_data ;
struct TYPE_10__ {int* buffer; } ;
struct TYPE_9__ {int key_len; } ;
typedef TYPE_3__ TME_DATA ;
typedef TYPE_4__ MEM_TYPE ;


 int ACK ;




 int FIN ;


 scalar_t__ MAX_WINDOW ;
 int RST ;
 scalar_t__ SW_ULONG_AT (int*,int) ;
 int SYN ;


 scalar_t__ TME_SUCCESS ;
 scalar_t__ ULONG_AT (int*,int) ;


uint32 tcp_session(uint8 *block, uint32 pkt_size, TME_DATA *data, MEM_TYPE *mem_ex, uint8 *mem_data)

{

 uint32 next_status;
 uint32 direction=ULONG_AT(mem_data,12);
 uint8 flags=mem_ex->buffer[25];
 tcp_data *session=(tcp_data*)(block+data->key_len*4);

 session->last_timestamp=session->timestamp_block;
 session->timestamp_block.tv_sec=0x7fffffff;

 if (direction==session->direction)
 {
  session->pkts_cln_to_srv++;
  session->bytes_cln_to_srv+=pkt_size;
 }
 else
 {
  session->pkts_srv_to_cln++;
  session->bytes_srv_to_cln+=pkt_size;
 }

 flags&=(ACK|FIN|SYN|RST);

 switch (session->status)
 {
 case 134:
  next_status=134;
  break;

 case 128:
  if (flags==SYN)
  {
   if (SW_ULONG_AT(mem_ex->buffer,20)!=0)
   {

    next_status=134;
    break;
   }
   next_status=129;
   session->syn_timestamp=session->last_timestamp;

   session->direction=direction;
   session->seq_n_0_cln=SW_ULONG_AT(mem_ex->buffer,16);
  }
  else
   next_status=128;
  break;

 case 129:
  if ((flags&RST)&&(direction!=session->direction))
  {
   next_status=135;
   break;
  }
  if ((flags==SYN)&&(direction==session->direction))
  {
   next_status=129;
   session->seq_n_0_cln=SW_ULONG_AT(mem_ex->buffer,16);
   break;
  }

  if ((flags==(SYN|ACK))&&(direction!=session->direction))
  {
   if (SW_ULONG_AT(mem_ex->buffer,20)!=session->seq_n_0_cln+1)
   {
    next_status=134;
    break;
   }
   next_status=130;

   session->syn_ack_timestamp=session->last_timestamp;

   session->seq_n_0_srv=SW_ULONG_AT(mem_ex->buffer,16);
   session->ack_cln=session->seq_n_0_cln+1;
  }
  else
  {
   next_status=134;
  }
  break;

 case 130:
  if ((flags&ACK)&&(flags&RST)&&(direction==session->direction))
  {
   next_status=135;
   session->ack_srv=SW_ULONG_AT(mem_ex->buffer,20);
   break;
  }

  if ((flags==ACK)&&(!(flags&(SYN|FIN|RST)))&&(direction==session->direction))
  {
   if (SW_ULONG_AT(mem_ex->buffer,20)!=session->seq_n_0_srv+1)
   {
    next_status=134;
    break;
   }
   next_status=133;
   session->ack_srv=session->seq_n_0_srv+1;
   break;
  }
  if ((flags&ACK)&&(flags&SYN)&&(direction!=session->direction))
  {
   next_status=130;
   break;
  }

  next_status=134;
  break;

 case 133:
  if (flags&SYN)
  {
   if ((flags&ACK)&&
    (direction!=session->direction)&&
    ((session->ack_cln-SW_ULONG_AT(mem_ex->buffer,20))<MAX_WINDOW)
    )
   {
    next_status=133;
    break;
   }

   if ((!(flags&ACK))&&
    (direction==session->direction)&&
    (SW_ULONG_AT(mem_ex->buffer,16)==session->seq_n_0_cln)&&
    (ULONG_AT(mem_ex->buffer,20)==0)
    )
   {
    next_status=133;
    break;
   }

   next_status=134;
   break;
  }
  if (flags&ACK)
   if (direction==session->direction)
   {
    uint32 new_ack=SW_ULONG_AT(mem_ex->buffer,20);
    if (new_ack-session->ack_srv<MAX_WINDOW)
     session->ack_srv=new_ack;
   }
   else
   {
    uint32 new_ack=SW_ULONG_AT(mem_ex->buffer,20);
    if (new_ack-session->ack_cln<MAX_WINDOW)
     session->ack_cln=new_ack;
   }
  if (flags&RST)
  {
   next_status=135;
   break;
  }
  if (flags&FIN)
   if (direction==session->direction)
   {
    session->ack_cln=SW_ULONG_AT(mem_ex->buffer,16);
    next_status=132;
    break;
   }
   else
   {
    session->ack_srv=SW_ULONG_AT(mem_ex->buffer,16);
    next_status=131;
    break;
   }
  next_status=133;
  break;

 case 135:
  next_status=135;
  break;

 case 131:
  if (flags&SYN)
  {
   next_status=134;
   break;
  }

  next_status=131;

  if (flags&ACK)
  {
   uint32 new_ack=SW_ULONG_AT(mem_ex->buffer,20);
   if (direction!=session->direction)
    if ((new_ack-session->ack_cln)<MAX_WINDOW)
     session->ack_cln=new_ack;
  }

  if (flags&RST)
   next_status=135;
  else
   if ((flags&FIN)&&(direction==session->direction))
   {
    session->ack_cln=SW_ULONG_AT(mem_ex->buffer,16);
    next_status=136;
   }

  break;

 case 132:
  if (flags&SYN)
  {
   next_status=134;
   break;
  }

  next_status=132;

  if (flags&ACK)
  {
   uint32 new_ack=SW_ULONG_AT(mem_ex->buffer,20);
   if (direction==session->direction)
    if (new_ack-session->ack_srv<MAX_WINDOW)
     session->ack_srv=new_ack;
  }

  if (flags&RST)
   next_status=135;
  else
   if ((flags&FIN)&&(direction!=session->direction))
   {
    session->ack_srv=SW_ULONG_AT(mem_ex->buffer,16);
    next_status=136;
   }

  break;

 case 136:
   next_status=136;
  break;
 default:
  next_status=134;

 }

 session->status=next_status;

 if ((next_status==136)||(next_status==128)||(next_status==135)||(next_status==134))
  session->timestamp_block=session->last_timestamp;

 return TME_SUCCESS;
}
