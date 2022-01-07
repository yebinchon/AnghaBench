; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaadpcm.c_ff_dcaadpcm_subband_analysis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaadpcm.c_ff_dcaadpcm_subband_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCA_ADPCM_COEFFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dcaadpcm_subband_analysis(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %20 = add nsw i32 16, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %25 = add nsw i32 16, %24
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %43, %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FFABS(i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @av_log2(i32 %47)
  %49 = sub nsw i32 %48, 11
  store i32 %49, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %76, %46
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @norm__(i32 %61, i32 7)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %23, i64 %64
  store i32 %62, i32* %65, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @norm__(i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %27, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %56
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %50

79:                                               ; preds = %50
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @find_best_filter(i32* %80, i32* %27, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @calc_prediction_gain(i32 %87, i32* %23, i32* %88, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 10
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

94:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 7
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %95

109:                                              ; preds = %95
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %111

111:                                              ; preds = %109, %93, %85
  %112 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FFABS(i32) #2

declare dso_local i32 @av_log2(i32) #2

declare dso_local i32 @norm__(i32, i32) #2

declare dso_local i32 @find_best_filter(i32*, i32*, i32) #2

declare dso_local i32 @calc_prediction_gain(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
