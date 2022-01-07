
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int cmd_prefix_; size_t insert_len_; int dist_prefix_; } ;
typedef int HistogramLiteral ;
typedef int HistogramDistance ;
typedef int HistogramCommand ;
typedef TYPE_1__ Command ;


 scalar_t__ CommandCopyLen (TYPE_1__ const*) ;
 int HistogramAddCommand (int *,int) ;
 int HistogramAddDistance (int *,int) ;
 int HistogramAddLiteral (int *,int const) ;

__attribute__((used)) static void BuildHistograms(const uint8_t* input,
                            size_t start_pos,
                            size_t mask,
                            const Command* commands,
                            size_t n_commands,
                            HistogramLiteral* lit_histo,
                            HistogramCommand* cmd_histo,
                            HistogramDistance* dist_histo) {
  size_t pos = start_pos;
  size_t i;
  for (i = 0; i < n_commands; ++i) {
    const Command cmd = commands[i];
    size_t j;
    HistogramAddCommand(cmd_histo, cmd.cmd_prefix_);
    for (j = cmd.insert_len_; j != 0; --j) {
      HistogramAddLiteral(lit_histo, input[pos & mask]);
      ++pos;
    }
    pos += CommandCopyLen(&cmd);
    if (CommandCopyLen(&cmd) && cmd.cmd_prefix_ >= 128) {
      HistogramAddDistance(dist_histo, cmd.dist_prefix_ & 0x3FF);
    }
  }
}
