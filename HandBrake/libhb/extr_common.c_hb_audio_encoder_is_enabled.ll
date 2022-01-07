; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_encoder_is_enabled.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_encoder_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"libfdk_aac\00", align 1
@AV_CODEC_ID_AC3 = common dso_local global i32 0, align 4
@AV_CODEC_ID_EAC3 = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLAC = common dso_local global i32 0, align 4
@AV_CODEC_ID_OPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hb_audio_encoder_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_audio_encoder_is_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %36 [
    i32 137, label %11
    i32 136, label %11
    i32 140, label %15
    i32 134, label %20
    i32 133, label %25
    i32 132, label %25
    i32 129, label %30
    i32 131, label %35
    i32 128, label %35
    i32 130, label %35
  ]

11:                                               ; preds = %9, %9
  %12 = call i32* @avcodec_find_encoder_by_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %9
  %16 = load i32, i32* @AV_CODEC_ID_AC3, align 4
  %17 = call i32* @avcodec_find_encoder(i32 %16)
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %9
  %21 = load i32, i32* @AV_CODEC_ID_EAC3, align 4
  %22 = call i32* @avcodec_find_encoder(i32 %21)
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %9, %9
  %26 = load i32, i32* @AV_CODEC_ID_FLAC, align 4
  %27 = call i32* @avcodec_find_encoder(i32 %26)
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %9
  %31 = load i32, i32* @AV_CODEC_ID_OPUS, align 4
  %32 = call i32* @avcodec_find_encoder(i32 %31)
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %9, %9, %9
  store i32 1, i32* %2, align 4
  br label %37

36:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %30, %25, %20, %15, %11, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32* @avcodec_find_encoder_by_name(i8*) #1

declare dso_local i32* @avcodec_find_encoder(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
