
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*) ;
 int exc_action_label_destroy ;
 int mac_labelzone_free (struct label*) ;

void
mac_exc_free_label(struct label *label)
{
 MAC_PERFORM(exc_action_label_destroy, label);
 mac_labelzone_free(label);
}
