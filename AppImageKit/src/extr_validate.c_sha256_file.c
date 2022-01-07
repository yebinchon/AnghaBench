
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int SHA256_CTX ;
typedef int FILE ;


 int ENOMEM ;
 int SEEK_SET ;
 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (int*,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int*,int,int const,int *) ;
 int fseek (int *,int,int ) ;
 int* malloc (int const) ;
 int sprintf (char*,char*,int) ;

int sha256_file(char *path, char outputBuffer[65], int skip_offset, int skip_length)
{
    FILE *file = fopen(path, "rb");
    if(!file) return(1);
    byte hash[SHA256_DIGEST_LENGTH];
    SHA256_CTX sha256;
    SHA256_Init(&sha256);
    const int bufSize = 1024*1024;
    byte *buffer = malloc(bufSize);
    int bytesRead = 0;
    if(!buffer) {
        fclose(file);
        return ENOMEM;
    }

    int totalBytesRead = 0;
    if(skip_offset <= bufSize){
        bytesRead = fread(buffer, 1, skip_offset, file);
        totalBytesRead += bytesRead;


        SHA256_Update(&sha256, buffer, bytesRead);
    } else {
        int stillToRead = skip_offset-bytesRead;

        int readThisTime;

        if(stillToRead>bufSize){
            readThisTime = bufSize;
        } else {
            readThisTime = stillToRead;
        }
        while((bytesRead = fread(buffer, 1, readThisTime, file)))
        {
            totalBytesRead += bytesRead;



            SHA256_Update(&sha256, buffer, bytesRead);
            stillToRead = skip_offset-totalBytesRead;


            if(stillToRead>bufSize){
                readThisTime = bufSize;
            } else {
                readThisTime = stillToRead;
            }
        }
    }

    fseek(file, skip_offset+skip_length, SEEK_SET);


    int i = 0;
    for(i = 0; i < skip_length; i++) {
        SHA256_Update(&sha256, "\0", 1);
        totalBytesRead += 1;
    }

    while((bytesRead = fread(buffer, 1, bufSize, file)))
    {
        totalBytesRead += bytesRead;


        SHA256_Update(&sha256, buffer, bytesRead);
    }
    SHA256_Final(hash, &sha256);



    for(i = 0; i < SHA256_DIGEST_LENGTH; i++)
    {
        sprintf(outputBuffer + (i * 2), "%02x", hash[i]);
    }
    outputBuffer[64] = 0;

    fclose(file);

    return 0;
}
