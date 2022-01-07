; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_apulsator.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_apulsator.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { double, double, double, i32, i32 }
%struct.TYPE_16__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %28, i64 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %7, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %8, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to double*
  store double* %39, double** %9, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  store double %45, double* %11, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  store double %48, double* %12, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load double, double* %50, align 8
  store double %51, double* %13, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = call i64 @av_frame_is_writable(%struct.TYPE_16__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %14, align 8
  br label %73

57:                                               ; preds = %2
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__* %58, i32 %61)
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %14, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %64 = icmp ne %struct.TYPE_16__* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %162

69:                                               ; preds = %57
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = call i32 @av_frame_copy_props(%struct.TYPE_16__* %70, %struct.TYPE_16__* %71)
  br label %73

73:                                               ; preds = %69, %55
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to double*
  store double* %79, double** %15, align 8
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %149, %73
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %152

84:                                               ; preds = %80
  %85 = load double*, double** %9, align 8
  %86 = getelementptr inbounds double, double* %85, i64 0
  %87 = load double, double* %86, align 8
  %88 = load double, double* %12, align 8
  %89 = fmul double %87, %88
  store double %89, double* %19, align 8
  %90 = load double*, double** %9, align 8
  %91 = getelementptr inbounds double, double* %90, i64 1
  %92 = load double, double* %91, align 8
  %93 = load double, double* %12, align 8
  %94 = fmul double %92, %93
  store double %94, double* %20, align 8
  %95 = load double, double* %19, align 8
  store double %95, double* %21, align 8
  %96 = load double, double* %20, align 8
  store double %96, double* %22, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = call double @lfo_get_value(i32* %98)
  %100 = fmul double %99, 5.000000e-01
  %101 = load double, double* %13, align 8
  %102 = fdiv double %101, 2.000000e+00
  %103 = fadd double %100, %102
  %104 = load double, double* %21, align 8
  %105 = fmul double %104, %103
  store double %105, double* %21, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  %108 = call double @lfo_get_value(i32* %107)
  %109 = fmul double %108, 5.000000e-01
  %110 = load double, double* %13, align 8
  %111 = fdiv double %110, 2.000000e+00
  %112 = fadd double %109, %111
  %113 = load double, double* %22, align 8
  %114 = fmul double %113, %112
  store double %114, double* %22, align 8
  %115 = load double, double* %21, align 8
  %116 = load double, double* %19, align 8
  %117 = load double, double* %13, align 8
  %118 = fsub double 1.000000e+00, %117
  %119 = fmul double %116, %118
  %120 = fadd double %115, %119
  store double %120, double* %17, align 8
  %121 = load double, double* %22, align 8
  %122 = load double, double* %20, align 8
  %123 = load double, double* %13, align 8
  %124 = fsub double 1.000000e+00, %123
  %125 = fmul double %122, %124
  %126 = fadd double %121, %125
  store double %126, double* %18, align 8
  %127 = load double, double* %11, align 8
  %128 = load double, double* %17, align 8
  %129 = fmul double %128, %127
  store double %129, double* %17, align 8
  %130 = load double, double* %11, align 8
  %131 = load double, double* %18, align 8
  %132 = fmul double %131, %130
  store double %132, double* %18, align 8
  %133 = load double, double* %17, align 8
  %134 = load double*, double** %15, align 8
  %135 = getelementptr inbounds double, double* %134, i64 0
  store double %133, double* %135, align 8
  %136 = load double, double* %18, align 8
  %137 = load double*, double** %15, align 8
  %138 = getelementptr inbounds double, double* %137, i64 1
  store double %136, double* %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 4
  %141 = call i32 @lfo_advance(i32* %140, i32 1)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = call i32 @lfo_advance(i32* %143, i32 1)
  %145 = load double*, double** %15, align 8
  %146 = getelementptr inbounds double, double* %145, i64 2
  store double* %146, double** %15, align 8
  %147 = load double*, double** %9, align 8
  %148 = getelementptr inbounds double, double* %147, i64 2
  store double* %148, double** %9, align 8
  br label %149

149:                                              ; preds = %84
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %80

152:                                              ; preds = %80
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %155 = icmp ne %struct.TYPE_16__* %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  br label %158

158:                                              ; preds = %156, %152
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %161 = call i32 @ff_filter_frame(%struct.TYPE_17__* %159, %struct.TYPE_16__* %160)
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %65
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local double @lfo_get_value(i32*) #1

declare dso_local i32 @lfo_advance(i32*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
