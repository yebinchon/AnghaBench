
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 size_t CCDRBG_MAX_ADDITIONALINPUT_SIZE ;
 size_t CCDRBG_MAX_REQUEST_SIZE ;
 scalar_t__ CCDRBG_RESEED_INTERVAL ;
 int CCDRBG_STATUS_NEED_RESEED ;
 int CCDRBG_STATUS_OK ;
 int CCDRBG_STATUS_PARAM_ERROR ;
 int cc_require (int,int ) ;
 int end ;

__attribute__((used)) static int validate_gen_params(uint64_t reseed_counter, size_t dataOutLength, size_t additionalLength)

{
    int rc=CCDRBG_STATUS_PARAM_ERROR;


    cc_require (dataOutLength <= CCDRBG_MAX_REQUEST_SIZE, end);
    cc_require (additionalLength<=CCDRBG_MAX_ADDITIONALINPUT_SIZE, end);


     rc = CCDRBG_STATUS_NEED_RESEED;
     cc_require (reseed_counter <= CCDRBG_RESEED_INTERVAL, end);

    rc=CCDRBG_STATUS_OK;

end:
    return rc;
}
