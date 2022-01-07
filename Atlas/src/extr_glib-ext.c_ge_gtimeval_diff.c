
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ gint64 ;
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ GTimeVal ;


 scalar_t__ G_USEC_PER_SEC ;

void ge_gtimeval_diff(GTimeVal *told, GTimeVal *tnew, gint64 *tdiff) {
 *tdiff = (gint64) tnew->tv_sec - told->tv_sec;
 *tdiff *= G_USEC_PER_SEC;
 *tdiff += (gint64) tnew->tv_usec - told->tv_usec;
}
