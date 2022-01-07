
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ max_seq_num; scalar_t__ probation; scalar_t__ bad_seq; int received; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;


 int LOG_INFO (int ,char*,scalar_t__,...) ;
 scalar_t__ MAX_DROPOUT ;
 scalar_t__ MAX_MISORDER ;
 scalar_t__ MIN_SEQUENTIAL ;
 int RTP_SEQ_MOD ;
 int init_sequence_number (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static bool update_sequence_number(VC_CONTAINER_TRACK_MODULE_T *t_module,
      uint16_t seq)
{
   uint16_t udelta = seq - t_module->max_seq_num;





   if (t_module->probation)
   {

      if (seq == t_module->max_seq_num + 1)
      {
         t_module->probation--;
         t_module->max_seq_num = seq;
         LOG_INFO(0, "RTP: Probation, %u more packet(s) to go at 0x%4.4hx", t_module->probation, seq);

         if (!t_module->probation)
         {
            init_sequence_number(t_module, seq);
            t_module->received++;
            return 1;
         }
      } else {
         t_module->probation = MIN_SEQUENTIAL - 1;
         t_module->max_seq_num = seq;
         LOG_INFO(0, "RTP: Probation reset, wait for %u packet(s) at 0x%4.4hx", t_module->probation, seq);
      }
      return 0;
   } else if (udelta < MAX_DROPOUT)
   {
      if (!udelta)
      {

         LOG_INFO(0, "RTP: Drop duplicate packet at 0x%4.4hx", seq);
         return 0;
      }
      if (udelta > 1)
      {
         LOG_INFO(0, "RTP: Jumped by %hu packets to 0x%4.4hx", udelta, seq);
      }

      t_module->max_seq_num = seq;
   } else




      {

         if (seq == t_module->bad_seq)
         {
            LOG_INFO(0, "RTP: Misorder restart at 0x%4.4hx", seq);



            init_sequence_number(t_module, seq);
         } else {
            LOG_INFO(0, "RTP: Misorder at 0x%4.4hx, expected 0x%4.4hx", seq, t_module->max_seq_num);
            t_module->bad_seq = (seq + 1) & (RTP_SEQ_MOD-1);
            return 0;
         }
      }







   t_module->received++;
   return 1;
}
