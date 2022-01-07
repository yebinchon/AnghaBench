
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_CHECK (int ,struct label*,int) ;
 int MAC_PERFORM (int ,struct label*) ;
 int ipq_label_destroy ;
 int ipq_label_init ;
 struct label* mac_labelzone_alloc (int) ;
 int mac_labelzone_free (struct label*) ;

__attribute__((used)) static struct label *
mac_ipq_label_alloc(int flag)
{
 struct label *label;
 int error;

 label = mac_labelzone_alloc(flag);
 if (label == ((void*)0))
  return (((void*)0));

 MAC_CHECK(ipq_label_init, label, flag);
 if (error) {
  MAC_PERFORM(ipq_label_destroy, label);
  mac_labelzone_free(label);
  return (((void*)0));
 }
 return (label);
}
