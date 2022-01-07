; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_aeval.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_aeval.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { double, double*, double*, i32* }
%struct.TYPE_17__ = type { i32, i64*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VAR_N = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@VAR_CH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %6, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %22, i64 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %7, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__* %28, i32 %29)
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %9, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %159

37:                                               ; preds = %2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %38, %struct.TYPE_17__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call double @TS2T(i32 %43, i32 %46)
  store double %47, double* %10, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %147, %37
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %154

52:                                               ; preds = %48
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load double*, double** %57, align 8
  %59 = load i64, i64* @VAR_N, align 8
  %60 = getelementptr inbounds double, double* %58, i64 %59
  store double %55, double* %60, align 8
  %61 = load double, double* %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 1.000000e+00
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %64, %68
  %70 = fadd double %61, %69
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load double*, double** %72, align 8
  %74 = load i64, i64* @VAR_T, align 8
  %75 = getelementptr inbounds double, double* %73, i64 %74
  store double %70, double* %75, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %101, %52
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to double*
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load double*, double** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %97, i64 %99
  store double %94, double* %100, align 8
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %76

104:                                              ; preds = %76
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %143, %104
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %146

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  %113 = sitofp i32 %112 to double
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load double*, double** %115, align 8
  %117 = load i64, i64* @VAR_CH, align 8
  %118 = getelementptr inbounds double, double* %116, i64 %117
  store double %113, double* %118, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load double*, double** %127, align 8
  %129 = bitcast double* %128 to i32*
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = call double @av_expr_eval(i32 %125, i32* %129, %struct.TYPE_16__* %130)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to double*
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double, double* %139, i64 %141
  store double %131, double* %142, align 8
  br label %143

143:                                              ; preds = %111
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %105

146:                                              ; preds = %105
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load double, double* %151, align 8
  %153 = fadd double %152, 1.000000e+00
  store double %153, double* %151, align 8
  br label %48

154:                                              ; preds = %48
  %155 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %158 = call i32 @ff_filter_frame(%struct.TYPE_18__* %156, %struct.TYPE_17__* %157)
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %33
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local double @TS2T(i32, i32) #1

declare dso_local double @av_expr_eval(i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
