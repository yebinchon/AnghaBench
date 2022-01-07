
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microdvd_tag {char key; int data1; } ;


 int MICRODVD_TAGS ;
 size_t indexof (int ,char) ;
 int microdvd_set_tag (struct microdvd_tag*,struct microdvd_tag) ;

__attribute__((used)) static char *check_for_italic_slash_marker(struct microdvd_tag *tags, char *s)
{
    if (*s == '/') {
        struct microdvd_tag tag = tags[indexof(MICRODVD_TAGS, 'y')];
        tag.key = 'y';
        tag.data1 |= 1 << 0 ;
        microdvd_set_tag(tags, tag);
        s++;
    }
    return s;
}
