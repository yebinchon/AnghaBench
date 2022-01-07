; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndGetSamplesMS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndGetSamplesMS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoOpt = common dso_local global i32 0, align 4
@PsndLen = common dso_local global i32 0, align 4
@PsndLen_exc_add = common dso_local global i64 0, align 8
@PsndLen_exc_cnt = common dso_local global i32 0, align 4
@POPT_EN_PSG = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i64 0, align 8
@POPT_EN_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PsndGetSamplesMS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @PicoOpt, align 4
  %6 = and i32 %5, 8
  %7 = ashr i32 %6, 3
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @PsndLen, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i64, i64* @PsndLen_exc_add, align 8
  %10 = load i32, i32* @PsndLen_exc_cnt, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @PsndLen_exc_cnt, align 4
  %14 = load i32, i32* @PsndLen_exc_cnt, align 4
  %15 = icmp sge i32 %14, 65536
  br i1 %15, label %16, label %21

16:                                               ; preds = %0
  %17 = load i32, i32* @PsndLen_exc_cnt, align 4
  %18 = sub nsw i32 %17, 65536
  store i32 %18, i32* @PsndLen_exc_cnt, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %0
  %22 = load i32, i32* @PicoOpt, align 4
  %23 = load i32, i32* @POPT_EN_PSG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i64, i64* @PsndOut, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @SN76496Update(i64 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %3, align 4
  %36 = load i64, i64* @PsndOut, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %49, %34
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %3, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %4, align 8
  br label %39

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @PicoOpt, align 4
  %58 = load i32, i32* @POPT_EN_STEREO, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 4, i32 2
  %63 = mul nsw i32 %56, %62
  %64 = call i32 @PicoWriteSound(i32 %63)
  %65 = call i32 (...) @PsndClear()
  ret void
}

declare dso_local i32 @SN76496Update(i64, i32, i32) #1

declare dso_local i32 @PicoWriteSound(i32) #1

declare dso_local i32 @PsndClear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
