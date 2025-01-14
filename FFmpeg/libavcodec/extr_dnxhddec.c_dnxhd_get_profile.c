
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_PROFILE_DNXHD ;
 int FF_PROFILE_DNXHR_444 ;
 int FF_PROFILE_DNXHR_HQ ;
 int FF_PROFILE_DNXHR_HQX ;
 int FF_PROFILE_DNXHR_LB ;
 int FF_PROFILE_DNXHR_SQ ;

__attribute__((used)) static int dnxhd_get_profile(int cid)
{
    switch(cid) {
    case 1270:
        return FF_PROFILE_DNXHR_444;
    case 1271:
        return FF_PROFILE_DNXHR_HQX;
    case 1272:
        return FF_PROFILE_DNXHR_HQ;
    case 1273:
        return FF_PROFILE_DNXHR_SQ;
    case 1274:
        return FF_PROFILE_DNXHR_LB;
    }
    return FF_PROFILE_DNXHD;
}
