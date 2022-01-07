
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int flags; } ;


 int LOG_ERR ;


 int ND_RA_FLAG_RTPREF_MASK ;


 int RTPREF_HIGH ;
 int RTPREF_INVALID ;
 int RTPREF_LOW ;
 int RTPREF_MEDIUM ;
 int log (int ,char*,int) ;

__attribute__((used)) static int
rtpref(struct nd_defrouter *dr)
{
 switch (dr->flags & ND_RA_FLAG_RTPREF_MASK) {
 case 131:
  return (RTPREF_HIGH);
 case 129:
 case 128:
  return (RTPREF_MEDIUM);
 case 130:
  return (RTPREF_LOW);
 default:





  log(LOG_ERR, "rtpref: impossible RA flag %x\n", dr->flags);
  return (RTPREF_INVALID);
 }

}
