
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_len; } ;


 scalar_t__ bcmp (struct sockaddr const*,struct sockaddr const*,scalar_t__) ;

__attribute__((used)) static inline int
ifa_equal(const struct sockaddr *sa1, const struct sockaddr *sa2)
{

 if (!sa1 || !sa2)
  return 0;
 if (sa1->sa_len != sa2->sa_len)
  return 0;

 return (bcmp(sa1, sa2, sa1->sa_len) == 0);
}
