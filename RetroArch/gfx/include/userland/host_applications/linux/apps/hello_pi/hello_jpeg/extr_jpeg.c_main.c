
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENMAX_JPEG_DECODER ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int assert (int) ;
 int bcm_host_init () ;
 int cleanup (int *) ;
 int decodeImage (int *,char*,size_t) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,size_t,int *) ;
 int free (char*) ;
 int fseek (int *,long,int ) ;
 size_t ftell (int *) ;
 char* malloc (size_t) ;
 int printf (char*,char*) ;
 int setupOpenMaxJpegDecoder (int **) ;

int
main(int argc, char *argv[])
{
    OPENMAX_JPEG_DECODER *pDecoder;
    char *sourceImage;
    size_t imageSize;
    int s;
    if (argc < 2) {
 printf("Usage: %s <filename>\n", argv[0]);
 return -1;
    }
    FILE *fp = fopen(argv[1], "rb");
    if (!fp) {
 printf("File %s not found.\n", argv[1]);
    }
    fseek(fp, 0L, SEEK_END);
    imageSize = ftell(fp);
    fseek(fp, 0L, SEEK_SET);
    sourceImage = malloc(imageSize);
    assert(sourceImage != ((void*)0));
    s = fread(sourceImage, 1, imageSize, fp);
    assert(s == imageSize);
    fclose(fp);
    bcm_host_init();
    s = setupOpenMaxJpegDecoder(&pDecoder);
    assert(s == 0);
    s = decodeImage(pDecoder, sourceImage, imageSize);
    assert(s == 0);
    cleanup(pDecoder);
    free(sourceImage);
    return 0;
}
