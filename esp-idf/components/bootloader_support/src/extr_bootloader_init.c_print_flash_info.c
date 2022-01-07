
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int magic; int segment_count; int spi_mode; int spi_speed; int spi_size; } ;
typedef TYPE_1__ esp_image_header_t ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGI (int ,char*,char const*) ;
 int REG_READ (int ) ;
 int SPI_CTRL_REG (int ) ;
 int SPI_FASTRD_MODE ;
 int SPI_FREAD_DIO ;
 int SPI_FREAD_DUAL ;
 int SPI_FREAD_QIO ;
 int SPI_FREAD_QUAD ;
 int SPI_MEM_CTRL_REG (int ) ;
 int SPI_MEM_FASTRD_MODE ;
 int SPI_MEM_FREAD_DIO ;
 int SPI_MEM_FREAD_DUAL ;
 int SPI_MEM_FREAD_QIO ;
 int SPI_MEM_FREAD_QUAD ;
 int TAG ;

__attribute__((used)) static void print_flash_info(const esp_image_header_t *phdr)
{


    ESP_LOGD(TAG, "magic %02x", phdr->magic );
    ESP_LOGD(TAG, "segments %02x", phdr->segment_count );
    ESP_LOGD(TAG, "spi_mode %02x", phdr->spi_mode );
    ESP_LOGD(TAG, "spi_speed %02x", phdr->spi_speed );
    ESP_LOGD(TAG, "spi_size %02x", phdr->spi_size );

    const char *str;
    switch ( phdr->spi_speed ) {
    case 129:
        str = "40MHz";
        break;
    case 130:
        str = "26.7MHz";
        break;
    case 131:
        str = "20MHz";
        break;
    case 128:
        str = "80MHz";
        break;
    default:
        str = "20MHz";
        break;
    }
    ESP_LOGI(TAG, "SPI Speed      : %s", str );
    ESP_LOGI(TAG, "SPI Mode       : %s", str );

    switch ( phdr->spi_size ) {
    case 135:
        str = "1MB";
        break;
    case 134:
        str = "2MB";
        break;
    case 133:
        str = "4MB";
        break;
    case 132:
        str = "8MB";
        break;
    case 136:
        str = "16MB";
        break;
    default:
        str = "2MB";
        break;
    }
    ESP_LOGI(TAG, "SPI Flash Size : %s", str );

}
