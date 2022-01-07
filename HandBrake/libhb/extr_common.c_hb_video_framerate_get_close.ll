; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_video_framerate_get_close.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_video_framerate_get_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, i64 }
%struct.TYPE_7__ = type { double }

@hb_video_rate_clock = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_video_framerate_get_close(%struct.TYPE_6__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store double %1, double* %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load double, double* %4, align 8
  store double %10, double* %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sitofp i64 %13 to double
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = fdiv double %14, %17
  store double %18, double* %5, align 8
  br label %19

19:                                               ; preds = %45, %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = call %struct.TYPE_7__* @hb_video_framerate_get_next(%struct.TYPE_7__* %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load i64, i64* @hb_video_rate_clock, align 8
  %25 = sitofp i64 %24 to double
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fdiv double %25, %28
  store double %29, double* %9, align 8
  %30 = load double, double* %9, align 8
  %31 = load double, double* %5, align 8
  %32 = fsub double %30, %31
  %33 = call double @ABS(double %32)
  %34 = load double, double* %8, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %23
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fptosi double %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load double, double* %9, align 8
  %42 = load double, double* %5, align 8
  %43 = fsub double %41, %42
  %44 = call double @ABS(double %43)
  store double %44, double* %8, align 8
  br label %45

45:                                               ; preds = %36, %23
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_7__* @hb_video_framerate_get_next(%struct.TYPE_7__*) #1

declare dso_local double @ABS(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
