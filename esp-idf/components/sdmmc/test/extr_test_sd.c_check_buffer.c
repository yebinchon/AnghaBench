
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
typedef int uint32_t ;


 int TEST_ASSERT_EQUAL_HEX32 (int ,int ) ;
 int memcpy (int *,int const*,int) ;
 int rand () ;
 int srand (int ) ;

__attribute__((used)) static void check_buffer(uint32_t seed, const uint8_t* src, size_t count) {
    srand(seed);
    for (size_t i = 0; i < count; ++i) {
        uint32_t val;
        memcpy(&val, src + i * sizeof(uint32_t), sizeof(val));
        TEST_ASSERT_EQUAL_HEX32(rand(), val);
    }
}
