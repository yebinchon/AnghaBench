; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_drmeter.c_print_stats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_drmeter.c_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { double, i32*, i64* }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Channel %d: DR: %.1f\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Overall DR: %.1f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stats(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %3, align 8
  store float 0.000000e+00, float* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %137, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %140

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %6, align 8
  store float 0.000000e+00, float* %9, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = call i32 @finish_block(%struct.TYPE_8__* %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %50, %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %32, 10000
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 10000, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %53

48:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %31

53:                                               ; preds = %47, %31
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 10000, %54
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, 1.000000e+04
  %58 = fptrunc double %57 to float
  store float %58, float* %8, align 4
  store i32 10000, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %108, %53
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = sitofp i32 %63 to double
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fmul double 2.000000e-01, %67
  %69 = fcmp olt double %64, %68
  br label %70

70:                                               ; preds = %62, %59
  %71 = phi i1 [ false, %59 ], [ %69, %62 ]
  br i1 %71, label %72, label %111

72:                                               ; preds = %70
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %83, 1.000000e+04
  %85 = fptosi double %84 to i32
  %86 = call float @SQR(i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sitofp i32 %93 to float
  %95 = fmul float %86, %94
  %96 = load float, float* %9, align 4
  %97 = fadd float %96, %95
  store float %97, float* %9, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %81, %72
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %10, align 4
  br label %59

111:                                              ; preds = %70
  %112 = load float, float* %8, align 4
  %113 = load float, float* %9, align 4
  %114 = fpext float %113 to double
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = fmul double 2.000000e-01, %117
  %119 = fdiv double %114, %118
  %120 = fptrunc double %119 to float
  %121 = call float @sqrt(float %120)
  %122 = fdiv float %112, %121
  %123 = call i32 @log10(float %122)
  %124 = mul nsw i32 20, %123
  %125 = sitofp i32 %124 to float
  store float %125, float* %7, align 4
  %126 = load float, float* %7, align 4
  %127 = load float, float* %4, align 4
  %128 = fadd float %127, %126
  store float %128, float* %4, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = load i32, i32* @AV_LOG_INFO, align 4
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  %133 = sitofp i32 %132 to float
  %134 = load float, float* %7, align 4
  %135 = fpext float %134 to double
  %136 = call i32 (%struct.TYPE_9__*, i32, i8*, float, ...) @av_log(%struct.TYPE_9__* %129, i32 %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), float %133, double %135)
  br label %137

137:                                              ; preds = %111
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %16

140:                                              ; preds = %16
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = load i32, i32* @AV_LOG_INFO, align 4
  %143 = load float, float* %4, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sitofp i32 %146 to float
  %148 = fdiv float %143, %147
  %149 = call i32 (%struct.TYPE_9__*, i32, i8*, float, ...) @av_log(%struct.TYPE_9__* %141, i32 %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), float %148)
  ret void
}

declare dso_local i32 @finish_block(%struct.TYPE_8__*) #1

declare dso_local float @SQR(i32) #1

declare dso_local i32 @log10(float) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, float, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
