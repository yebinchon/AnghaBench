; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspGenerateAudio.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspGenerateAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@scsp_bufL = common dso_local global i64* null, align 8
@scsp_bufR = common dso_local global i64* null, align 8
@scsp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cdda_next_out = common dso_local global i32 0, align 4
@cdda_next_in = common dso_local global i32 0, align 4
@cdda_delay = common dso_local global i64 0, align 8
@CDDA_DELAY_SAMPLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64)* @ScspGenerateAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ScspGenerateAudio(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %20, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %8, align 8
  br label %9

23:                                               ; preds = %9
  %24 = load i64*, i64** %4, align 8
  store i64* %24, i64** @scsp_bufL, align 8
  %25 = load i64*, i64** %5, align 8
  store i64* %25, i64** @scsp_bufR, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %36, %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 0), align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @ScspGenerateAudioForSlot(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load i32, i32* @cdda_next_out, align 4
  %41 = load i32, i32* @cdda_next_in, align 4
  %42 = call i32 @PSP_UC(i32 %41)
  %43 = mul nsw i32 %42, 2352
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load i64, i64* @cdda_delay, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @cdda_delay, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @cdda_delay, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %6, align 8
  store i64 0, i64* @cdda_delay, align 8
  br label %60

56:                                               ; preds = %48
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @cdda_delay, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* @cdda_delay, align 8
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i64, i64* @cdda_delay, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i64*, i64** %4, align 8
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @ScspGenerateAudioForCDDA(i64* %65, i64* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i32, i32* @cdda_next_out, align 4
  %72 = load i32, i32* @cdda_next_in, align 4
  %73 = call i32 @PSP_UC(i32 %72)
  %74 = mul nsw i32 %73, 2352
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* @CDDA_DELAY_SAMPLES, align 8
  store i64 %77, i64* @cdda_delay, align 8
  br label %78

78:                                               ; preds = %76, %70
  ret void
}

declare dso_local i32 @ScspGenerateAudioForSlot(i32*, i64) #1

declare dso_local i32 @PSP_UC(i32) #1

declare dso_local i32 @ScspGenerateAudioForCDDA(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
