
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int szDir ;
struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
typedef int mbedtls_x509_crt ;
struct TYPE_4__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef char WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DIR ;


 int CP_ACP ;
 scalar_t__ ERROR_NO_MORE_FILES ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (char*,TYPE_1__*) ;
 scalar_t__ FindNextFileW (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_X509_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_X509_FILE_IO_ERROR ;
 int MBEDTLS_X509_MAX_FILE_PATH_LEN ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 int S_ISREG (int ) ;
 int WideCharToMultiByte (int ,int ,int ,int ,char*,int,int *,int *) ;
 int closedir (int *) ;
 int lstrlenW (int ) ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 int mbedtls_snprintf (char*,int,char*,char const*,int ) ;
 int mbedtls_threading_readdir_mutex ;
 int mbedtls_x509_crt_parse_file (int *,char*) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,int ,size_t) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;
 size_t strlen (char const*) ;

int mbedtls_x509_crt_parse_path( mbedtls_x509_crt *chain, const char *path )
{
    int ret = 0;
    int t_ret;
    int snp_ret;
    struct stat sb;
    struct dirent *entry;
    char entry_name[MBEDTLS_X509_MAX_FILE_PATH_LEN];
    DIR *dir = opendir( path );

    if( dir == ((void*)0) )
        return( MBEDTLS_ERR_X509_FILE_IO_ERROR );
    while( ( entry = readdir( dir ) ) != ((void*)0) )
    {
        snp_ret = mbedtls_snprintf( entry_name, sizeof entry_name,
                                    "%s/%s", path, entry->d_name );

        if( snp_ret < 0 || (size_t)snp_ret >= sizeof entry_name )
        {
            ret = MBEDTLS_ERR_X509_BUFFER_TOO_SMALL;
            goto cleanup;
        }
        else if( stat( entry_name, &sb ) == -1 )
        {
            ret = MBEDTLS_ERR_X509_FILE_IO_ERROR;
            goto cleanup;
        }

        if( !S_ISREG( sb.st_mode ) )
            continue;


        t_ret = mbedtls_x509_crt_parse_file( chain, entry_name );
        if( t_ret < 0 )
            ret++;
        else
            ret += t_ret;
    }

cleanup:
    closedir( dir );
    return( ret );
}
