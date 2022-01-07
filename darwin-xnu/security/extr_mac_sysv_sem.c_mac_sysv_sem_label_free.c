
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*) ;
 int mac_labelzone_free (struct label*) ;
 int sysvsem_label_destroy ;

__attribute__((used)) static void
mac_sysv_sem_label_free(struct label *label)
{

 MAC_PERFORM(sysvsem_label_destroy, label);
 mac_labelzone_free(label);
}
