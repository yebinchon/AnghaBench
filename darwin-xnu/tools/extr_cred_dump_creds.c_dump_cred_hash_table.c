
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int debug_ucred ;


 int dump_cred (int *) ;
 int printf (char*,int) ;

void dump_cred_hash_table( debug_ucred * credp, size_t buf_size )
{
 int i, my_count = (buf_size / sizeof(debug_ucred));

 printf("\n\t dumping credential hash table - total creds %d \n",
   my_count);
 for (i = 0; i < my_count; i++) {
  printf("[%02d] ", i);
  dump_cred( credp );
  credp++;
 }
 return;
}
