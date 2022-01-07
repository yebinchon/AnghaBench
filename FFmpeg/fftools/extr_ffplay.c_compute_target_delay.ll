; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_compute_target_delay.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_compute_target_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@AV_SYNC_VIDEO_MASTER = common dso_local global i64 0, align 8
@AV_SYNC_THRESHOLD_MIN = common dso_local global i32 0, align 4
@AV_SYNC_THRESHOLD_MAX = common dso_local global i32 0, align 4
@AV_SYNC_FRAMEDUP_THRESHOLD = common dso_local global double 0.000000e+00, align 8
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"video: delay=%0.3f A-V=%f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, %struct.TYPE_5__*)* @compute_target_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_target_delay(double %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store double 0.000000e+00, double* %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = call i64 @get_master_sync_type(%struct.TYPE_5__* %7)
  %9 = load i64, i64* @AV_SYNC_VIDEO_MASTER, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %66

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call double @get_clock(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = call double @get_master_clock(%struct.TYPE_5__* %15)
  %17 = fsub double %14, %16
  store double %17, double* %6, align 8
  %18 = load i32, i32* @AV_SYNC_THRESHOLD_MIN, align 4
  %19 = load i32, i32* @AV_SYNC_THRESHOLD_MAX, align 4
  %20 = load double, double* %3, align 8
  %21 = call double @FFMIN(i32 %19, double %20)
  %22 = call double @FFMAX(i32 %18, double %21)
  store double %22, double* %5, align 8
  %23 = load double, double* %6, align 8
  %24 = call i32 @isnan(double %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %11
  %27 = load double, double* %6, align 8
  %28 = call i64 @fabs(double %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %26
  %34 = load double, double* %6, align 8
  %35 = load double, double* %5, align 8
  %36 = fneg double %35
  %37 = fcmp ole double %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load double, double* %3, align 8
  %40 = load double, double* %6, align 8
  %41 = fadd double %39, %40
  %42 = call double @FFMAX(i32 0, double %41)
  store double %42, double* %3, align 8
  br label %64

43:                                               ; preds = %33
  %44 = load double, double* %6, align 8
  %45 = load double, double* %5, align 8
  %46 = fcmp oge double %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load double, double* %3, align 8
  %49 = load double, double* @AV_SYNC_FRAMEDUP_THRESHOLD, align 8
  %50 = fcmp ogt double %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load double, double* %3, align 8
  %53 = load double, double* %6, align 8
  %54 = fadd double %52, %53
  store double %54, double* %3, align 8
  br label %63

55:                                               ; preds = %47, %43
  %56 = load double, double* %6, align 8
  %57 = load double, double* %5, align 8
  %58 = fcmp oge double %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load double, double* %3, align 8
  %61 = fmul double 2.000000e+00, %60
  store double %61, double* %3, align 8
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64, %26, %11
  br label %66

66:                                               ; preds = %65, %2
  %67 = load i32, i32* @AV_LOG_TRACE, align 4
  %68 = load double, double* %3, align 8
  %69 = load double, double* %6, align 8
  %70 = fneg double %69
  %71 = call i32 @av_log(i32* null, i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), double %68, double %70)
  %72 = load double, double* %3, align 8
  ret double %72
}

declare dso_local i64 @get_master_sync_type(%struct.TYPE_5__*) #1

declare dso_local double @get_clock(i32*) #1

declare dso_local double @get_master_clock(%struct.TYPE_5__*) #1

declare dso_local double @FFMAX(i32, double) #1

declare dso_local double @FFMIN(i32, double) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @av_log(i32*, i32, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
