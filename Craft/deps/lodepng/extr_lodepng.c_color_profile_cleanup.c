
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int palette; int tree; } ;
typedef TYPE_1__ ColorProfile ;


 int color_tree_cleanup (int *) ;
 int lodepng_free (int ) ;

__attribute__((used)) static void color_profile_cleanup(ColorProfile* profile)
{
  color_tree_cleanup(&profile->tree);
  lodepng_free(profile->palette);
}
