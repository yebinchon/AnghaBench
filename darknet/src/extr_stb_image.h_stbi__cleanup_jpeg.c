
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* s; } ;
typedef TYPE_2__ stbi__jpeg ;
struct TYPE_5__ {int img_n; } ;


 int stbi__free_jpeg_components (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void stbi__cleanup_jpeg(stbi__jpeg *j)
{
   stbi__free_jpeg_components(j, j->s->img_n, 0);
}
