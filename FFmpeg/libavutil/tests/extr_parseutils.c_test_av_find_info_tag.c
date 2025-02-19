
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;


 int FF_ARRAY_ELEMS (char const**) ;
 scalar_t__ av_find_info_tag (char*,int,char const*,char const*) ;
 int printf (char*,int,char const*,...) ;

__attribute__((used)) static void test_av_find_info_tag(void)
{
    static const char args[] = "?tag1=val1&tag2=val2&tag3=val3&tag41=value 41&tag42=random1";
    static const char *tags[] = {"tag1", "tag2", "tag3", "tag4", "tag41", "41", "random1"};
    char buff[16];
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(tags); ++i) {
        if (av_find_info_tag(buff, sizeof(buff), tags[i], args))
            printf("%d. %s found: %s\n", i, tags[i], buff);
        else
            printf("%d. %s not found\n", i, tags[i]);
    }
}
