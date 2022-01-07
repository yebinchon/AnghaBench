; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_synchronize_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_synchronize_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, i64, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { double }

@AV_SYNC_AUDIO_MASTER = common dso_local global i64 0, align 8
@AV_NOSYNC_THRESHOLD = common dso_local global i64 0, align 8
@AUDIO_DIFF_AVG_NB = common dso_local global i64 0, align 8
@SAMPLE_CORRECTION_PERCENT_MAX = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"diff=%f adiff=%f sample_diff=%d apts=%0.3f %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @synchronize_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synchronize_audio(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i64 @get_master_sync_type(%struct.TYPE_7__* %11)
  %13 = load i64, i64* @AV_SYNC_AUDIO_MASTER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %112

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  %18 = call double @get_clock(i32* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call double @get_master_clock(%struct.TYPE_7__* %19)
  %21 = fsub double %18, %20
  store double %21, double* %6, align 8
  %22 = load double, double* %6, align 8
  %23 = call i32 @isnan(double %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %106, label %25

25:                                               ; preds = %15
  %26 = load double, double* %6, align 8
  %27 = call i64 @fabs(double %26)
  %28 = load i64, i64* @AV_NOSYNC_THRESHOLD, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %106

30:                                               ; preds = %25
  %31 = load double, double* %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fmul double %34, %37
  %39 = fadd double %31, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store double %39, double* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AUDIO_DIFF_AVG_NB, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %105

52:                                               ; preds = %30
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = fsub double 1.000000e+00, %58
  %60 = fmul double %55, %59
  store double %60, double* %7, align 8
  %61 = load double, double* %7, align 8
  %62 = call i64 @fabs(double %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %52
  %68 = load i32, i32* %4, align 4
  %69 = load double, double* %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = fmul double %69, %73
  %75 = fptosi double %74 to i32
  %76 = add nsw i32 %68, %75
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SAMPLE_CORRECTION_PERCENT_MAX, align 4
  %79 = sub nsw i32 100, %78
  %80 = mul nsw i32 %77, %79
  %81 = sdiv i32 %80, 100
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SAMPLE_CORRECTION_PERCENT_MAX, align 4
  %84 = add nsw i32 100, %83
  %85 = mul nsw i32 %82, %84
  %86 = sdiv i32 %85, 100
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @av_clip(i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %67, %52
  %92 = load i32, i32* @AV_LOG_TRACE, align 4
  %93 = load double, double* %6, align 8
  %94 = load double, double* %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @av_log(i32* null, i32 %92, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), double %93, double %94, i32 %97, i32 %100, i64 %103)
  br label %105

105:                                              ; preds = %91, %47
  br label %111

106:                                              ; preds = %25, %15
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store double 0.000000e+00, double* %110, align 8
  br label %111

111:                                              ; preds = %106, %105
  br label %112

112:                                              ; preds = %111, %2
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @get_master_sync_type(%struct.TYPE_7__*) #1

declare dso_local double @get_clock(i32*) #1

declare dso_local double @get_master_clock(%struct.TYPE_7__*) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, double, double, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
