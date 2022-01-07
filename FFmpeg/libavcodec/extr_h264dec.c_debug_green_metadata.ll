; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_debug_green_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_debug_green_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, i64, i64, i64, i64, i64 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Green Metadata Info SEI message\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  green_metadata_type: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"  green_metadata_period_type: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"  green_metadata_num_seconds: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"  green_metadata_num_pictures: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"  SEI GREEN Complexity Metrics: %f %f %f %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  xsd_metric_type: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"  xsd_metric_value: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @debug_green_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_green_metadata(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @AV_LOG_DEBUG, align 4
  %7 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %5, i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @AV_LOG_DEBUG, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %8, i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), double %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  %18 = fcmp oeq float %17, 0.000000e+00
  br i1 %18, label %19, label %81

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @AV_LOG_DEBUG, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %20, i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = fcmp oeq float %29, 2.000000e+00
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @AV_LOG_DEBUG, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load float, float* %35, align 8
  %37 = fpext float %36 to double
  %38 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %32, i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), double %37)
  br label %53

39:                                               ; preds = %19
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fcmp oeq float %42, 3.000000e+00
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @AV_LOG_DEBUG, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %45, i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), double %50)
  br label %52

52:                                               ; preds = %44, %39
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @AV_LOG_DEBUG, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to float
  %60 = fdiv float %59, 2.550000e+02
  %61 = fpext float %60 to double
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to float
  %66 = fdiv float %65, 2.550000e+02
  %67 = fpext float %66 to double
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = sitofp i64 %70 to float
  %72 = fdiv float %71, 2.550000e+02
  %73 = fpext float %72 to double
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to float
  %78 = fdiv float %77, 2.550000e+02
  %79 = fpext float %78 to double
  %80 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %54, i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), double %61, double %67, double %73, double %79)
  br label %110

81:                                               ; preds = %2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 8
  %85 = fcmp oeq float %84, 1.000000e+00
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* @AV_LOG_DEBUG, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load float, float* %90, align 8
  %92 = fpext float %91 to double
  %93 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %87, i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), double %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load float, float* %95, align 8
  %97 = fcmp oeq float %96, 0.000000e+00
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* @AV_LOG_DEBUG, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to float
  %105 = fdiv float %104, 1.000000e+02
  %106 = fpext float %105 to double
  %107 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %99, i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), double %106)
  br label %108

108:                                              ; preds = %98, %86
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %53
  ret void
}

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
