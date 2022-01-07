
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*,struct label*) ;
 int pipe_label_copy ;

void
mac_pipe_label_copy(struct label *src, struct label *dest)
{

 MAC_PERFORM(pipe_label_copy, src, dest);
}
