
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AES_BLOCK_BYTES ;
 int AES_STATE_REG ;
 scalar_t__ AES_TEXT_IN_BASE ;
 scalar_t__ AES_TEXT_OUT_BASE ;
 int AES_TRIGGER_REG ;
 scalar_t__ REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static inline void esp_aes_block(const void *input, void *output)
{
    memcpy((void *)AES_TEXT_IN_BASE, input, AES_BLOCK_BYTES);

    REG_WRITE(AES_TRIGGER_REG, 1);
    while (REG_READ(AES_STATE_REG) != 0) { }

    memcpy(output, (void *)AES_TEXT_OUT_BASE, AES_BLOCK_BYTES);
}
