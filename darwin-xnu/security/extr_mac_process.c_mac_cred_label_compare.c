
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 scalar_t__ bcmp (struct label*,struct label*,int) ;

int
mac_cred_label_compare(struct label *a, struct label *b)
{
 return (bcmp(a, b, sizeof (*a)) == 0);
}
