
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tag ;
struct microdvd_tag {int key; } ;


 int MICRODVD_TAGS ;
 int indexof (int ,int ) ;
 int memcpy (struct microdvd_tag*,struct microdvd_tag*,int) ;

__attribute__((used)) static void microdvd_set_tag(struct microdvd_tag *tags, struct microdvd_tag tag)
{
    int tag_index = indexof(MICRODVD_TAGS, tag.key);

    if (tag_index < 0)
        return;
    memcpy(&tags[tag_index], &tag, sizeof(tag));
}
