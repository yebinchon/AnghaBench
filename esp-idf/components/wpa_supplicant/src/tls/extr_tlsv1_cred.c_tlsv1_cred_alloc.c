
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_credentials {int dummy; } ;


 scalar_t__ os_zalloc (int) ;

struct tlsv1_credentials * tlsv1_cred_alloc(void)
{
 struct tlsv1_credentials *cred;
 cred = (struct tlsv1_credentials *)os_zalloc(sizeof(*cred));
 return cred;
}
