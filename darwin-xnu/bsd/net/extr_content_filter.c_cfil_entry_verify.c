
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_entry {int cfe_rcv; int cfe_snd; } ;


 int cfil_entry_buf_verify (int *) ;

__attribute__((used)) static void
cfil_entry_verify(struct cfil_entry *entry)
{
 cfil_entry_buf_verify(&entry->cfe_snd);
 cfil_entry_buf_verify(&entry->cfe_rcv);
}
