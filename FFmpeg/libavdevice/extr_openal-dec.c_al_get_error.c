
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ALCenum ;
typedef int ALCdevice ;
 int AVERROR (int ) ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int alcGetError (int *) ;
 scalar_t__ alcGetString (int *,int) ;

__attribute__((used)) static inline int al_get_error(ALCdevice *device, const char** error_msg_ret)
{
    ALCenum error = alcGetError(device);
    if (error_msg_ret)
        *error_msg_ret = (const char*) alcGetString(device, error);
    switch (error) {
    case 129:
        return 0;
    case 132:
        return AVERROR(ENODEV);
        break;
    case 133:
    case 131:
    case 130:
        return AVERROR(EINVAL);
        break;
    case 128:
        return AVERROR(ENOMEM);
        break;
    default:
        return AVERROR(EIO);
    }
}
