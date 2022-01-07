
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int oldlen; size_t newlen; int newptr; scalar_t__ oldptr; } ;


 int EINVAL ;
 int EPERM ;
 int SYSCTL_IN (struct sysctl_req*,char*,size_t) ;
 int SYSCTL_OUT (struct sysctl_req*,char*,int) ;
 int strlen (char*) ;

int
sysctl_io_string(struct sysctl_req *req, char *pValue, size_t valueSize, int trunc, int *changed)
{
 int error;

 if (changed) *changed = 0;

 if (trunc && req->oldptr && req->oldlen && (req->oldlen<strlen(pValue) + 1)) {






  error = SYSCTL_OUT(req, pValue, req->oldlen-1);
  if (!error) {
   char c = 0;
   error = SYSCTL_OUT(req, &c, 1);
  }
 } else {

  error = SYSCTL_OUT(req, pValue, strlen(pValue) + 1);
 }


 if (error || !req->newptr)
  return(error);


 if (valueSize == 0)
  return(EPERM);


 if (req->newlen >= valueSize)
  return(EINVAL);


 error = SYSCTL_IN(req, pValue, req->newlen);
 pValue[req->newlen] = '\0';

 if (!error && changed)
  *changed = 1;
 return(error);
}
