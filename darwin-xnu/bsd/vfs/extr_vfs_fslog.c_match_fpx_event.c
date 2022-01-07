
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef scalar_t__ uint32_t ;
struct fpx_event {scalar_t__ const fe_code; scalar_t__ const fe_xcpt; int fe_uuid; } ;


 scalar_t__ memcmp (int const,int ,int) ;

__attribute__((used)) static bool
match_fpx_event(const struct fpx_event *fe,
    const uuid_t uuid, const uint32_t code, const uint32_t xcpt)
{
 return (code == fe->fe_code && xcpt == fe->fe_xcpt &&
     0 == memcmp(uuid, fe->fe_uuid, sizeof (uuid_t)));
}
