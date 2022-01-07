; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndClear.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PsndLen = common dso_local global i32 0, align 4
@PsndLen_exc_add = common dso_local global i64 0, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_STEREO = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PsndClear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16*, align 8
  %3 = load i32, i32* @PsndLen, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* @PsndLen_exc_add, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @PicoOpt, align 4
  %11 = load i32, i32* @POPT_EN_STEREO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i16*, i16** @PsndOut, align 8
  %16 = bitcast i16* %15 to i32*
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @memset32(i32* %16, i32 0, i32 %17)
  br label %46

19:                                               ; preds = %9
  %20 = load i16*, i16** @PsndOut, align 8
  store i16* %20, i16** %2, align 8
  %21 = load i16*, i16** %2, align 8
  %22 = ptrtoint i16* %21 to i64
  %23 = and i64 %22, 2
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i16*, i16** %2, align 8
  %27 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %27, i16** %2, align 8
  store i16 0, i16* %26, align 2
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i16*, i16** %2, align 8
  %32 = bitcast i16* %31 to i32*
  %33 = load i32, i32* %1, align 4
  %34 = sdiv i32 %33, 2
  %35 = call i32 @memset32(i32* %32, i32 0, i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i16*, i16** %2, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %40, i64 %43
  store i16 0, i16* %44, align 2
  br label %45

45:                                               ; preds = %39, %30
  br label %46

46:                                               ; preds = %45, %14
  ret void
}

declare dso_local i32 @memset32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
