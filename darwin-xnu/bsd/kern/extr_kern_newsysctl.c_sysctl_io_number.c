
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int oldlen; int newlen; int newptr; scalar_t__ oldptr; } ;
typedef int smallValue ;
typedef int bigValue ;


 int EPERM ;
 int ERANGE ;
 int SYSCTL_IN (struct sysctl_req*,void*,size_t) ;
 int SYSCTL_OUT (struct sysctl_req*,...) ;

int
sysctl_io_number(struct sysctl_req *req, long long bigValue, size_t valueSize, void *pValue, int *changed) {
 int smallValue;
 int error;

 if (changed) *changed = 0;
 if (((valueSize == sizeof(int)) ||
     ((req->oldlen == sizeof(int)) && (valueSize == sizeof(long long))))
   && (req->oldptr)) {
  smallValue = (int)bigValue;
  if ((long long)smallValue != bigValue)
   return(ERANGE);
  error = SYSCTL_OUT(req, &smallValue, sizeof(smallValue));
 } else {

  error = SYSCTL_OUT(req, &bigValue, valueSize);
 }

 if (error || !req->newptr)
  return(error);


 if (pValue == ((void*)0))
  return(EPERM);


 if ((req->newlen == sizeof(int)) && (valueSize == sizeof(long long))) {

  error = SYSCTL_IN(req, &smallValue, sizeof(smallValue));
  if (!error)
   *(long long *)pValue = (long long)smallValue;
 } else if ((req->newlen == sizeof(long long)) && (valueSize == sizeof(int))) {

  error = SYSCTL_IN(req, &bigValue, sizeof(bigValue));
  if (!error) {
   smallValue = (int)bigValue;
   if ((long long)smallValue != bigValue)
    return(ERANGE);
   *(int *)pValue = smallValue;
  }
 } else {

  error = SYSCTL_IN(req, pValue, valueSize);
 }
 if (!error && changed)
  *changed = 1;
 return(error);
}
