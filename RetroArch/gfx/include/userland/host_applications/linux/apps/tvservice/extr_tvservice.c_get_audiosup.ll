; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_get_audiosup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_get_audiosup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.get_audiosup.sample_rates = private unnamed_addr constant [7 x i32] [i32 32, i32 44, i32 48, i32 88, i32 96, i32 176, i32 192], align 16
@__const.get_audiosup.sample_sizes = private unnamed_addr constant [3 x i32] [i32 16, i32 20, i32 24], align 4
@.str = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"AC3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MPEG1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MP3\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"MPEG2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"AAC\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"DTS\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ATRAC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DSD\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EAC3\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"DTS_HD\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"MLP\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"WMAPRO\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Extended\00", align 1
@__const.get_audiosup.formats = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)], align 16
@EDID_AudioFormat_ePCM = common dso_local global i32 0, align 4
@EDID_AudioFormat_eMaxCount = common dso_local global i32 0, align 4
@EDID_AudioSampleRate_e44KHz = common dso_local global i32 0, align 4
@EDID_AudioSampleSize_16bit = common dso_local global i32 0, align 4
@EDID_AudioSampleRate_e32KHz = common dso_local global i32 0, align 4
@EDID_AudioSampleRate_e192KHz = common dso_local global i32 0, align 4
@EDID_AudioSampleSize_24bit = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [81 x i8] c"%8s supported: Max channels: %d, Max samplerate:%4dkHz, Max samplesize %2d bits.\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"%8s supported: Max channels: %d, Max samplerate:%4dkHz, Max rate %4d kb/s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_audiosup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_audiosup() #0 {
  %1 = alloca [7 x i32], align 16
  %2 = alloca [3 x i32], align 4
  %3 = alloca [16 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast [7 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([7 x i32]* @__const.get_audiosup.sample_rates to i8*), i64 28, i1 false)
  %11 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.get_audiosup.sample_sizes to i8*), i64 12, i1 false)
  %12 = bitcast [16 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i8*]* @__const.get_audiosup.formats to i8*), i64 128, i1 false)
  %13 = load i32, i32* @EDID_AudioFormat_ePCM, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %132, %0
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EDID_AudioFormat_eMaxCount, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %135

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 8
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EDID_AudioSampleRate_e44KHz, align 4
  %26 = load i32, i32* @EDID_AudioSampleSize_16bit, align 4
  %27 = call i64 @vc_tv_hdmi_audio_supported(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %19

35:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  %36 = load i32, i32* @EDID_AudioSampleRate_e32KHz, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %50, %35
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EDID_AudioSampleRate_e192KHz, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @EDID_AudioSampleSize_16bit, align 4
  %45 = call i64 @vc_tv_hdmi_audio_supported(i32 %42, i32 1, i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EDID_AudioFormat_ePCM, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  %60 = load i32, i32* @EDID_AudioSampleSize_16bit, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %74, %59
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @EDID_AudioSampleSize_24bit, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @EDID_AudioSampleRate_e44KHz, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @vc_tv_hdmi_audio_supported(i32 %66, i32 1, i32 %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [16 x i8*], [16 x i8*]* %3, i64 0, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @LOG_STD(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0), i8* %86, i32 %87, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %82, %79
  br label %131

98:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %111, %98
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 256
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @EDID_AudioSampleRate_e44KHz, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i64 @vc_tv_hdmi_audio_supported(i32 %103, i32 1, i32 %104, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %108, %102
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %99

114:                                              ; preds = %99
  %115 = load i32, i32* %7, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i8*], [16 x i8*]* %3, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 8, %127
  %129 = call i32 @LOG_STD(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.17, i64 0, i64 0), i8* %121, i32 %122, i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %117, %114
  br label %131

131:                                              ; preds = %130, %97
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %14

135:                                              ; preds = %14
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @vc_tv_hdmi_audio_supported(i32, i32, i32, i32) #2

declare dso_local i32 @LOG_STD(i8*, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
