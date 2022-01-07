
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSKextVersionStage ;


 int __vers_isdigit (char const) ;
 scalar_t__ __vers_isspace (char const) ;
 int kOSKextVersionStageAlpha ;
 int kOSKextVersionStageBeta ;
 int kOSKextVersionStageCandidate ;
 int kOSKextVersionStageDevelopment ;
 int kOSKextVersionStageInvalid ;
 int kOSKextVersionStageRelease ;

__attribute__((used)) static OSKextVersionStage __OSKextVersionStageForString(const char ** string_p) {
    const char * string;

    if (!string_p || !*string_p) {
        return kOSKextVersionStageInvalid;
    }

    string = *string_p;

    if (__vers_isspace(string[0]) || string[0] == '\0') {
        return kOSKextVersionStageRelease;
    } else {
        switch (string[0]) {
          case 'd':
              if (__vers_isdigit(string[1])) {
                  *string_p = &string[1];
                  return kOSKextVersionStageDevelopment;
              }
              break;
          case 'a':
              if (__vers_isdigit(string[1])) {
                  *string_p = &string[1];
                  return kOSKextVersionStageAlpha;
              }
              break;
          case 'b':
              if (__vers_isdigit(string[1])) {
                  *string_p = &string[1];
                  return kOSKextVersionStageBeta;
              }
              break;
          case 'f':
              if (__vers_isdigit(string[1])) {
                  *string_p = &string[1];
                  return kOSKextVersionStageCandidate;
              } else if (string[1] == 'c' && __vers_isdigit(string[2])) {
                  *string_p = &string[2];
                  return kOSKextVersionStageCandidate;
              } else {
                  return kOSKextVersionStageInvalid;
              }
          default:
              return kOSKextVersionStageInvalid;
        }
    }

    return kOSKextVersionStageInvalid;
}
