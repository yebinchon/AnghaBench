; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndDoDAC.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndDoDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ym2612 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PsndDacLine = common dso_local global i32 0, align 4
@dac_info = common dso_local global i32* null, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_STEREO = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PsndDoDAC(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2612, i32 0, i32 0), align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @PsndDacLine, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 312
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 311, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @PsndDacLine, align 4
  %18 = load i32*, i32** @dac_info, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %3, align 4
  %24 = load i32*, i32** @dac_info, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 4
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 15
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %15
  br label %81

39:                                               ; preds = %15
  %40 = load i32, i32* @PicoOpt, align 4
  %41 = load i32, i32* @POPT_EN_STEREO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load i16*, i16** @PsndOut, align 8
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %45, i64 %48
  store i16* %49, i16** %8, align 8
  br label %50

50:                                               ; preds = %57, %44
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = trunc i32 %54 to i16
  %56 = load i16*, i16** %8, align 8
  store i16 %55, i16* %56, align 2
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = load i16*, i16** %8, align 8
  %61 = getelementptr inbounds i16, i16* %60, i64 2
  store i16* %61, i16** %8, align 8
  br label %50

62:                                               ; preds = %50
  br label %81

63:                                               ; preds = %39
  %64 = load i16*, i16** @PsndOut, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %64, i64 %66
  store i16* %67, i16** %9, align 8
  br label %68

68:                                               ; preds = %75, %63
  %69 = load i32, i32* %5, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = trunc i32 %72 to i16
  %74 = load i16*, i16** %9, align 8
  store i16 %73, i16* %74, align 2
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  %78 = load i16*, i16** %9, align 8
  %79 = getelementptr inbounds i16, i16* %78, i32 1
  store i16* %79, i16** %9, align 8
  br label %68

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %38, %80, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
