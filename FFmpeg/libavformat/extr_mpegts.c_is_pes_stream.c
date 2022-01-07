
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ AV_RL32 (char*) ;

__attribute__((used)) static int is_pes_stream(int stream_type, uint32_t prog_reg_desc)
{
    return !(stream_type == 0x13 ||
             (stream_type == 0x86 && prog_reg_desc == AV_RL32("CUEI")) );
}
