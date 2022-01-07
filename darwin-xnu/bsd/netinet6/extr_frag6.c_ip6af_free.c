
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6asfrag {int dummy; } ;


 int atomic_add_32 (int *,int) ;
 int dtom (struct ip6asfrag*) ;
 int ip6af_count ;
 int m_free (int ) ;

__attribute__((used)) static void
ip6af_free(struct ip6asfrag *af6)
{
 (void) m_free(dtom(af6));
 atomic_add_32(&ip6af_count, -1);
}
