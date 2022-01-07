; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_lsf2lsp_5.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_lsf2lsp_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@lsf_5_1 = common dso_local global i32** null, align 8
@lsf_5_2 = common dso_local global i32** null, align 8
@lsf_5_3 = common dso_local global i32** null, align 8
@lsf_5_4 = common dso_local global i32** null, align 8
@lsf_5_5 = common dso_local global i32** null, align 8
@LSF_R_FAC = common dso_local global float 0.000000e+00, align 4
@PRED_FAC_MODE_12k2 = common dso_local global float 0.000000e+00, align 4
@lsf_5_mean = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @lsf2lsp_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsf2lsp_5(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [5 x i32*], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %3, align 8
  %12 = load i32, i32* @LP_FILTER_ORDER, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca float, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32**, i32*** @lsf_5_1, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 0
  store i32* %21, i32** %22, align 16
  %23 = load i32**, i32*** @lsf_5_2, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 1
  store i32* %28, i32** %29, align 8
  %30 = load i32**, i32*** @lsf_5_3, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = lshr i64 %33, 1
  %35 = getelementptr inbounds i32*, i32** %30, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 2
  store i32* %36, i32** %37, align 16
  %38 = load i32**, i32*** @lsf_5_4, align 8
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 3
  store i32* %43, i32** %44, align 8
  %45 = load i32**, i32*** @lsf_5_5, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 4
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 4
  store i32* %50, i32** %51, align 16
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %77, %1
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @LP_FILTER_ORDER, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load float*, float** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = load float, float* @LSF_R_FAC, align 4
  %65 = fmul float %63, %64
  %66 = load float, float* @PRED_FAC_MODE_12k2, align 4
  %67 = fmul float %65, %66
  %68 = load float*, float** @lsf_5_mean, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %67, %72
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %15, i64 %75
  store float %73, float* %76, align 4
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 0
  %88 = load i64*, i64** %3, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  %90 = load i64, i64* %89, align 8
  %91 = and i64 %90, 1
  %92 = call i32 @lsf2lsp_for_mode12k2(%struct.TYPE_6__* %81, i32 %86, float* %15, i32** %87, i32 0, i64 %91, i32 0)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 0
  %100 = load i64*, i64** %3, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = and i64 %102, 1
  %104 = call i32 @lsf2lsp_for_mode12k2(%struct.TYPE_6__* %93, i32 %98, float* %15, i32** %99, i32 2, i64 %103, i32 1)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LP_FILTER_ORDER, align 4
  %119 = call i32 @weighted_vector_sumd(i32 %109, i32 %112, i32 %117, double 5.000000e-01, double 5.000000e-01, i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @LP_FILTER_ORDER, align 4
  %136 = call i32 @weighted_vector_sumd(i32 %124, i32 %129, i32 %134, double 5.000000e-01, double 5.000000e-01, i32 %135)
  %137 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %137)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lsf2lsp_for_mode12k2(%struct.TYPE_6__*, i32, float*, i32**, i32, i64, i32) #2

declare dso_local i32 @weighted_vector_sumd(i32, i32, i32, double, double, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
