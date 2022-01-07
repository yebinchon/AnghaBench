
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BaseType_t ;


 int portNUM_PROCESSORS ;
 int s_test_core_id ;

__attribute__((used)) static BaseType_t test_event_get_core(void)
{
    static int calls = 0;

    if (portNUM_PROCESSORS > 1) {
        return (s_test_core_id + calls++) % portNUM_PROCESSORS;
    } else {
        return s_test_core_id;
    }
}
