
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int dummy; } ;


 int display_clean (struct display*) ;

__attribute__((used)) static void
display_destroy(struct display *dp)
{

   display_clean(dp);
}
