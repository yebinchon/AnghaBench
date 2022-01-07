
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int UInt8 ;
typedef int CFStringRef ;
typedef int * CFDataRef ;


 int * CFDataGetBytePtr (int *) ;
 int CFRelease (int *) ;
 int * CFStringCreateExternalRepresentation (int ,int ,int ,int ) ;
 int fprintf (int ,char*) ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingUTF8 ;
 char* malloc (scalar_t__) ;
 int stderr ;
 scalar_t__ strlcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

char *
convert_cfstring(CFStringRef the_string)
{
    char *result = ((void*)0);
    CFDataRef the_data = ((void*)0);
    const UInt8 *data_bytes = ((void*)0);
    char *converted_string = ((void*)0);
    u_long converted_len = 0;
    u_long bytes_copied = 0;

    the_data = CFStringCreateExternalRepresentation(kCFAllocatorDefault,
        the_string, kCFStringEncodingUTF8, 0);
    if (!the_data) {
        fprintf(stderr, "Failed to convert string\n");
        goto finish;
    }

    data_bytes = CFDataGetBytePtr(the_data);
    if (!data_bytes) {
        fprintf(stderr, "Failed to get converted string bytes\n");
        goto finish;
    }

    converted_len = strlen((const char *)data_bytes) + 1;
    converted_string = malloc(converted_len);
    if (!converted_string) {
        fprintf(stderr, "Failed to allocate memory\n");
        goto finish;
    }

    bytes_copied = strlcpy(converted_string, (const char *) data_bytes,
        converted_len) + 1;
    if (bytes_copied != converted_len) {
        fprintf(stderr, "Failed to copy converted string\n");
        goto finish;
    }

    result = converted_string;
finish:
    if (the_data) CFRelease(the_data);
    return result;
}
