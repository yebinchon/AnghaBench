
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_sha_type ;
typedef int SemaphoreHandle_t ;


 int DPORT_INTERRUPT_DISABLE () ;
 int DPORT_INTERRUPT_RESTORE () ;
 int DPORT_REG_READ (int ) ;
 int DPORT_REG_WRITE (int ,int) ;
 int DPORT_SEQUENCE_REG_READ (int) ;
 scalar_t__ SHA2_384 ;
 scalar_t__ SHA2_512 ;
 int SHA_BUSY_REG (scalar_t__) ;
 int SHA_LOAD_REG (scalar_t__) ;
 scalar_t__ SHA_TEXT_BASE ;
 int abort () ;
 int assert (int ) ;
 int esp_dport_access_read_buffer (int*,int,int) ;
 int esp_sha_lock_memory_block () ;
 int esp_sha_unlock_memory_block () ;
 int esp_sha_wait_idle () ;
 int * sha_get_engine_state (scalar_t__) ;
 int sha_length (scalar_t__) ;
 scalar_t__ uxSemaphoreGetCount (int *) ;

void esp_sha_read_digest_state(esp_sha_type sha_type, void *digest_state)
{
    uint32_t *digest_state_words = ((void*)0);
    uint32_t *reg_addr_buf = ((void*)0);
    uint32_t word_len = sha_length(sha_type)/4;

    {
        SemaphoreHandle_t *engine_state = sha_get_engine_state(sha_type);
        assert(uxSemaphoreGetCount(engine_state) == 0 &&
               "SHA engine should be locked" );
    }



    esp_sha_wait_idle();

    esp_sha_lock_memory_block();

    esp_sha_wait_idle();

    DPORT_REG_WRITE(SHA_LOAD_REG(sha_type), 1);
    while(DPORT_REG_READ(SHA_BUSY_REG(sha_type)) == 1) { }
    digest_state_words = (uint32_t *)digest_state;
    reg_addr_buf = (uint32_t *)(SHA_TEXT_BASE);
    if(sha_type == SHA2_384 || sha_type == SHA2_512) {

        DPORT_INTERRUPT_DISABLE();
        for(int i = 0; i < word_len; i += 2) {
            digest_state_words[i+1] = DPORT_SEQUENCE_REG_READ((uint32_t)&reg_addr_buf[i]);
            digest_state_words[i] = DPORT_SEQUENCE_REG_READ((uint32_t)&reg_addr_buf[i+1]);
        }
        DPORT_INTERRUPT_RESTORE();
    } else {
        esp_dport_access_read_buffer(digest_state_words, (uint32_t)&reg_addr_buf[0], word_len);
    }
    esp_sha_unlock_memory_block();




    for (int i = 0; i < word_len; i++) {
        if (digest_state_words[i] != 0) {
            return;
        }
    }
    abort();
}
