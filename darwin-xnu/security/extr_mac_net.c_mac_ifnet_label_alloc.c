
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*) ;
 int M_WAITOK ;
 int ifnet_label_init ;
 struct label* mac_labelzone_alloc (int ) ;

__attribute__((used)) static struct label *
mac_ifnet_label_alloc(void)
{
 struct label *label;

 label = mac_labelzone_alloc(M_WAITOK);
 if (label == ((void*)0))
  return (((void*)0));
 MAC_PERFORM(ifnet_label_init, label);
 return (label);
}
