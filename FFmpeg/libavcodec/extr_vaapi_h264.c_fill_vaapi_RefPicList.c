
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VAPictureH264 ;
struct TYPE_3__ {scalar_t__ reference; int parent; } ;
typedef TYPE_1__ H264Ref ;


 int fill_vaapi_pic (int *,int ,scalar_t__) ;
 int init_vaapi_pic (int *) ;

__attribute__((used)) static void fill_vaapi_RefPicList(VAPictureH264 RefPicList[32],
                                  const H264Ref *ref_list,
                                  unsigned int ref_count)
{
    unsigned int i, n = 0;
    for (i = 0; i < ref_count; i++)
        if (ref_list[i].reference)
            fill_vaapi_pic(&RefPicList[n++], ref_list[i].parent,
                           ref_list[i].reference);

    for (; n < 32; n++)
        init_vaapi_pic(&RefPicList[n]);
}
