
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ output_off; scalar_t__ output; } ;
typedef TYPE_1__ user_data_t ;
typedef int XML_Char ;


 int TEST_ASSERT_EQUAL (int ,int) ;
 int insert_space (TYPE_1__*) ;
 int snprintf (scalar_t__,scalar_t__,char*,char*) ;
 int strlcpy (char*,int const*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void data_handler(void *userData, const XML_Char *s, int len)
{
    user_data_t *user_data = (user_data_t *) userData;

    insert_space(user_data);


    char tmp_str[len+1];
    strlcpy(tmp_str, s, len+1);

    int ret = snprintf(user_data->output + user_data->output_off, sizeof(user_data->output) - user_data->output_off,
                "%s", tmp_str);
    TEST_ASSERT_EQUAL(strlen(tmp_str), ret);
    user_data->output_off += ret;
}
