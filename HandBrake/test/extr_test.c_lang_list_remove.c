
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_array_t ;


 int hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_array_remove (int *,int) ;
 char* hb_value_get_string (int ) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static void lang_list_remove(hb_value_array_t *list, const char *lang)
{
    int count = hb_value_array_len(list);
    int ii;
    for (ii = count - 1; ii >= 0; ii--)
    {
        const char *tmp = hb_value_get_string(hb_value_array_get(list, ii));
        if (!strncmp(lang, tmp, 4))
            hb_value_array_remove(list, ii);
    }
}
