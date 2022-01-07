
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*) ;
 int MAC_WAITOK ;
 struct label* mac_labelzone_alloc (int ) ;
 int pipe_label_init ;

struct label *
mac_pipe_label_alloc(void)
{
 struct label *label;

 label = mac_labelzone_alloc(MAC_WAITOK);
 if (label == ((void*)0))
  return (((void*)0));
 MAC_PERFORM(pipe_label_init, label);
 return (label);
}
