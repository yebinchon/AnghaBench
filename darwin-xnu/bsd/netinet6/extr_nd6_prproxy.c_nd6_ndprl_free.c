
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd6_prproxy_prelist {int dummy; } ;


 int ndprl_zone ;
 int zfree (int ,struct nd6_prproxy_prelist*) ;

__attribute__((used)) static void
nd6_ndprl_free(struct nd6_prproxy_prelist *ndprl)
{
 zfree(ndprl_zone, ndprl);
}
