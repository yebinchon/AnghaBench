; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, double, double, double, double, double* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { double, double, double, double }

@FILTER_NTSC_setup = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@M_PI = common dso_local global i32 0, align 4
@COLOURS_NTSC_external = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FILTER_NTSC_Update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [768 x double], align 16
  store i32* %0, i32** %2, align 8
  %4 = getelementptr inbounds [768 x double], [768 x double]* %3, i64 0, i64 0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 0), align 8
  %6 = load i32, i32* @M_PI, align 4
  %7 = mul nsw i32 %5, %6
  %8 = call i32 @COLOURS_NTSC_GetYIQ(double* %4, i32 %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @COLOURS_NTSC_external, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @COLOURS_NTSC_external, i32 0, i32 0), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 2), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 3), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 4), align 8
  br label %20

15:                                               ; preds = %11, %1
  %16 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 0), align 8
  store double %16, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 1), align 8
  %17 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 1), align 8
  store double %17, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 2), align 8
  %18 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 2), align 8
  store double %18, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 3), align 8
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 3), align 8
  store double %19, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 4), align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = getelementptr inbounds [768 x double], [768 x double]* %3, i64 0, i64 0
  store double* %21, double** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 5), align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @atari_ntsc_init(i32* %22, %struct.TYPE_5__* @FILTER_NTSC_setup)
  ret void
}

declare dso_local i32 @COLOURS_NTSC_GetYIQ(double*, i32) #1

declare dso_local i32 @atari_ntsc_init(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
