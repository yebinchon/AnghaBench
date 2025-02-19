
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct TYPE_10__ {scalar_t__ ss_len; scalar_t__ ss_family; } ;
struct TYPE_12__ {TYPE_2__ end; TYPE_2__ start; } ;
struct secpolicyindex {scalar_t__ ul_proto; TYPE_2__ dst; int prefd; TYPE_2__ src; TYPE_6__ dst_range; int prefs; TYPE_6__ src_range; int * internal_if; } ;
typedef int caddr_t ;
struct TYPE_11__ {int sin_addr; int sin_port; } ;
struct TYPE_9__ {int sin6_addr; int sin6_scope_id; int sin6_port; } ;




 int IPSEC_PORT_ANY ;
 scalar_t__ IPSEC_ULPROTO_ANY ;
 int bcmp (TYPE_2__*,TYPE_2__*,scalar_t__) ;
 int key_bbcmp (int ,int ,int ) ;
 int key_is_addr_in_range (TYPE_2__*,TYPE_6__*) ;
 TYPE_3__* satosin (TYPE_2__*) ;
 TYPE_1__* satosin6 (TYPE_2__*) ;

__attribute__((used)) static int
key_cmpspidx_withmask(
       struct secpolicyindex *spidx0,
       struct secpolicyindex *spidx1)
{
    int spidx0_src_is_range = 0;
    int spidx0_dst_is_range = 0;


 if (spidx0 == ((void*)0) && spidx1 == ((void*)0))
  return 1;

 if (spidx0 == ((void*)0) || spidx1 == ((void*)0))
  return 0;

    if (spidx0->src_range.start.ss_len > 0)
        spidx0_src_is_range = 1;

    if (spidx0->dst_range.start.ss_len > 0)
        spidx0_dst_is_range = 1;

 if ((spidx0_src_is_range ? spidx0->src_range.start.ss_family : spidx0->src.ss_family) != spidx1->src.ss_family ||
     (spidx0_dst_is_range ? spidx0->dst_range.start.ss_family : spidx0->dst.ss_family) != spidx1->dst.ss_family ||
     (spidx0_src_is_range ? spidx0->src_range.start.ss_len : spidx0->src.ss_len) != spidx1->src.ss_len ||
     (spidx0_dst_is_range ? spidx0->dst_range.start.ss_len : spidx0->dst.ss_len) != spidx1->dst.ss_len)
  return 0;


 if (spidx0->ul_proto != (u_int16_t)IPSEC_ULPROTO_ANY
  && spidx0->ul_proto != spidx1->ul_proto)
  return 0;


    if (spidx1->internal_if != ((void*)0)) {
        if (spidx0->internal_if == ((void*)0)
            || spidx0->internal_if != spidx1->internal_if)
            return 0;


        switch (spidx0->src.ss_family) {
            case 129:
                if (spidx0_src_is_range &&
                    (satosin(&spidx1->src)->sin_port < satosin(&spidx0->src_range.start)->sin_port
                     || satosin(&spidx1->src)->sin_port > satosin(&spidx0->src_range.end)->sin_port))
                    return 0;
                else if (satosin(&spidx0->src)->sin_port != IPSEC_PORT_ANY
       && satosin(&spidx0->src)->sin_port !=
       satosin(&spidx1->src)->sin_port)
                    return 0;
                break;
            case 128:
                if (spidx0_src_is_range &&
                    (satosin6(&spidx1->src)->sin6_port < satosin6(&spidx0->src_range.start)->sin6_port
                     || satosin6(&spidx1->src)->sin6_port > satosin6(&spidx0->src_range.end)->sin6_port))
                    return 0;
                else if (satosin6(&spidx0->src)->sin6_port != IPSEC_PORT_ANY
       && satosin6(&spidx0->src)->sin6_port !=
       satosin6(&spidx1->src)->sin6_port)
                    return 0;
                break;
            default:
                break;
        }
    } else if (spidx0_src_is_range) {
        if (!key_is_addr_in_range(&spidx1->src, &spidx0->src_range))
            return 0;
    } else {
        switch (spidx0->src.ss_family) {
            case 129:
                if (satosin(&spidx0->src)->sin_port != IPSEC_PORT_ANY
     && satosin(&spidx0->src)->sin_port !=
                    satosin(&spidx1->src)->sin_port)
                    return 0;
                if (!key_bbcmp((caddr_t)&satosin(&spidx0->src)->sin_addr,
          (caddr_t)&satosin(&spidx1->src)->sin_addr, spidx0->prefs))
                    return 0;
                break;
            case 128:
                if (satosin6(&spidx0->src)->sin6_port != IPSEC_PORT_ANY
     && satosin6(&spidx0->src)->sin6_port !=
                    satosin6(&spidx1->src)->sin6_port)
                    return 0;




                if (satosin6(&spidx0->src)->sin6_scope_id &&
                    satosin6(&spidx1->src)->sin6_scope_id &&
                    satosin6(&spidx0->src)->sin6_scope_id !=
                    satosin6(&spidx1->src)->sin6_scope_id)
                    return 0;
                if (!key_bbcmp((caddr_t)&satosin6(&spidx0->src)->sin6_addr,
          (caddr_t)&satosin6(&spidx1->src)->sin6_addr, spidx0->prefs))
                    return 0;
                break;
            default:

                if (bcmp(&spidx0->src, &spidx1->src, spidx0->src.ss_len) != 0)
                    return 0;
                break;
        }
    }

    if (spidx0_dst_is_range) {
        if (!key_is_addr_in_range(&spidx1->dst, &spidx0->dst_range))
            return 0;
    } else {
        switch (spidx0->dst.ss_family) {
            case 129:
                if (satosin(&spidx0->dst)->sin_port != IPSEC_PORT_ANY
     && satosin(&spidx0->dst)->sin_port !=
                    satosin(&spidx1->dst)->sin_port)
                    return 0;
                if (!key_bbcmp((caddr_t)&satosin(&spidx0->dst)->sin_addr,
          (caddr_t)&satosin(&spidx1->dst)->sin_addr, spidx0->prefd))
                    return 0;
                break;
            case 128:
                if (satosin6(&spidx0->dst)->sin6_port != IPSEC_PORT_ANY
     && satosin6(&spidx0->dst)->sin6_port !=
                    satosin6(&spidx1->dst)->sin6_port)
                    return 0;




                if (satosin6(&spidx0->src)->sin6_scope_id &&
                    satosin6(&spidx1->src)->sin6_scope_id &&
                    satosin6(&spidx0->dst)->sin6_scope_id !=
                    satosin6(&spidx1->dst)->sin6_scope_id)
                    return 0;
                if (!key_bbcmp((caddr_t)&satosin6(&spidx0->dst)->sin6_addr,
          (caddr_t)&satosin6(&spidx1->dst)->sin6_addr, spidx0->prefd))
                    return 0;
                break;
            default:

                if (bcmp(&spidx0->dst, &spidx1->dst, spidx0->dst.ss_len) != 0)
                    return 0;
                break;
        }
    }



 return 1;
}
