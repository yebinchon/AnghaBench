; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa_qsa.c_check_pcm_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa_qsa.c_check_pcm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@EOK = common dso_local global i32 0, align 4
@SND_PCM_STATUS_UNSECURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"check_pcm_status got SND_PCM_STATUS_UNSECURE, aborting playback\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@SND_PCM_STATUS_UNDERRUN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"check_pcm_status: SNDP_CM_STATUS_UNDERRUN.\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Invalid state detected for underrun on snd_pcm_channel_prepare: %s\0A\00", align 1
@SND_PCM_STATUS_OVERRUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"check_pcm_status: SNDP_CM_STATUS_OVERRUN.\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Invalid state detected for overrun on snd_pcm_channel_prepare: %s\0A\00", align 1
@SND_PCM_STATUS_CHANGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"check_pcm_status: SNDP_CM_STATUS_CHANGE.\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Invalid state detected for change on snd_pcm_channel_prepare: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"check_pcm_status failed: %s\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_pcm_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pcm_status(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = load i32, i32* @EOK, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i32 @memset(%struct.TYPE_5__* %5, i32 0, i32 16)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_pcm_channel_status(i32 %16, %struct.TYPE_5__* %5)
  store i32 %17, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SND_PCM_STATUS_UNSECURE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EPROTO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %91

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SND_PCM_STATUS_UNDERRUN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @snd_pcm_channel_prepare(i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @snd_strerror(i32 %42)
  %44 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EPROTO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %33
  br label %90

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SND_PCM_STATUS_OVERRUN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @snd_pcm_channel_prepare(i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @snd_strerror(i32 %62)
  %64 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EPROTO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %53
  br label %89

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SND_PCM_STATUS_CHANGE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @snd_pcm_channel_prepare(i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @snd_strerror(i32 %82)
  %84 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EPROTO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %81, %73
  br label %88

88:                                               ; preds = %87, %68
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %47
  br label %91

91:                                               ; preds = %90, %24
  br label %104

92:                                               ; preds = %2
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @snd_strerror(i32 %93)
  %95 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @ESRCH, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @EBADF, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %92
  br label %104

104:                                              ; preds = %103, %91
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @snd_pcm_channel_status(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @snd_pcm_channel_prepare(i32, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
