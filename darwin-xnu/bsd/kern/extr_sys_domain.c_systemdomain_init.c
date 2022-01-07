
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {int dom_flags; } ;


 int DOM_INITIALIZED ;
 int VERIFY (int) ;
 int kern_control_init (struct domain*) ;
 int kern_event_init (struct domain*) ;
 struct domain* systemdomain ;

__attribute__((used)) static void
systemdomain_init(struct domain *dp)
{
 VERIFY(!(dp->dom_flags & DOM_INITIALIZED));
 VERIFY(systemdomain == ((void*)0));

 systemdomain = dp;


 kern_event_init(dp);
 kern_control_init(dp);
}
