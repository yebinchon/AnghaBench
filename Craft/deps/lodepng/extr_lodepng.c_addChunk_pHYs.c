
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int size; int data; } ;
typedef TYPE_1__ ucvector ;
struct TYPE_11__ {int phys_unit; int phys_y; int phys_x; } ;
typedef TYPE_2__ LodePNGInfo ;


 unsigned int addChunk (TYPE_1__*,char*,int ,int ) ;
 int lodepng_add32bitInt (TYPE_1__*,int ) ;
 int ucvector_cleanup (TYPE_1__*) ;
 int ucvector_init (TYPE_1__*) ;
 int ucvector_push_back (TYPE_1__*,int ) ;

__attribute__((used)) static unsigned addChunk_pHYs(ucvector* out, const LodePNGInfo* info)
{
  unsigned error = 0;
  ucvector data;
  ucvector_init(&data);

  lodepng_add32bitInt(&data, info->phys_x);
  lodepng_add32bitInt(&data, info->phys_y);
  ucvector_push_back(&data, info->phys_unit);

  error = addChunk(out, "pHYs", data.data, data.size);
  ucvector_cleanup(&data);

  return error;
}
