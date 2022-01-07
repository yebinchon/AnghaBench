
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kev_netevent_clat46_data {int euuid; int epid; int clat46_event_code; } ;


 int EVENTHANDLER_INVOKE (int *,int ,int ,int ,int ) ;
 int in6_clat46_event ;
 int in6_clat46_evhdlr_ctxt ;

__attribute__((used)) static void
in6_clat46_event_callback(void *arg)
{
        struct kev_netevent_clat46_data *p_in6_clat46_ev =
            (struct kev_netevent_clat46_data *)arg;

        EVENTHANDLER_INVOKE(&in6_clat46_evhdlr_ctxt, in6_clat46_event,
            p_in6_clat46_ev->clat46_event_code, p_in6_clat46_ev->epid,
            p_in6_clat46_ev->euuid);
}
