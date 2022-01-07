; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_get_channel_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_get_channel_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kAudioChannelLabel_LFEScreen = common dso_local global i64 0, align 8
@kAudioChannelLabel_RightSurround = common dso_local global i64 0, align 8
@kAudioChannelLabel_CenterSurround = common dso_local global i64 0, align 8
@kAudioChannelLabel_RightSurroundDirect = common dso_local global i64 0, align 8
@kAudioChannelLabel_TopBackRight = common dso_local global i64 0, align 8
@kAudioChannelLabel_RearSurroundLeft = common dso_local global i64 0, align 8
@kAudioChannelLabel_RearSurroundRight = common dso_local global i64 0, align 8
@kAudioChannelLabel_RightWide = common dso_local global i64 0, align 8
@kAudioChannelLabel_LFE2 = common dso_local global i64 0, align 8
@AV_CH_LOW_FREQUENCY_2 = common dso_local global i32 0, align 4
@kAudioChannelLabel_Mono = common dso_local global i64 0, align 8
@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ffat_get_channel_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffat_get_channel_id(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %83

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @kAudioChannelLabel_LFEScreen, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %12, 1
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %7
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @kAudioChannelLabel_RightSurround, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %83

23:                                               ; preds = %15
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @kAudioChannelLabel_CenterSurround, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = add nsw i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %83

31:                                               ; preds = %23
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @kAudioChannelLabel_RightSurroundDirect, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = add nsw i64 %36, 23
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %83

39:                                               ; preds = %31
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @kAudioChannelLabel_TopBackRight, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = sub nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %39
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @kAudioChannelLabel_RearSurroundLeft, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %83

52:                                               ; preds = %47
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @kAudioChannelLabel_RearSurroundRight, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = sub nsw i64 %57, 29
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %83

60:                                               ; preds = %52
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @kAudioChannelLabel_RightWide, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %3, align 8
  %66 = sub nsw i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %83

68:                                               ; preds = %60
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @kAudioChannelLabel_LFE2, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @AV_CH_LOW_FREQUENCY_2, align 4
  %74 = call i32 @ff_ctzll(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %83

75:                                               ; preds = %68
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @kAudioChannelLabel_Mono, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %81 = call i32 @ff_ctzll(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %75
  store i32 -1, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %79, %72, %64, %56, %51, %43, %35, %27, %19, %11, %6
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ff_ctzll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
