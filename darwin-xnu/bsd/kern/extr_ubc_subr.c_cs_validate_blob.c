
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
typedef TYPE_1__ CS_GenericBlob ;


 int EBADEXEC ;
 size_t ntohl (int ) ;

__attribute__((used)) static int
cs_validate_blob(const CS_GenericBlob *blob, size_t length)
{
 if (length < sizeof(CS_GenericBlob) || length < ntohl(blob->length))
  return EBADEXEC;
 return 0;
}
