; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_ebur128.c_gate_update.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_ebur128.c_gate_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrator = type { double, double, double, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.integrator*, double, double, i32)* @gate_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gate_update(%struct.integrator* %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.integrator*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store %struct.integrator* %0, %struct.integrator** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load double, double* %7, align 8
  %13 = call i32 @HIST_POS(double %12)
  %14 = load i64, i64* @HIST_SIZE, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @av_clip(i32 %13, i32 0, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.integrator*, %struct.integrator** %5, align 8
  %18 = getelementptr inbounds %struct.integrator, %struct.integrator* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load double, double* %6, align 8
  %27 = load %struct.integrator*, %struct.integrator** %5, align 8
  %28 = getelementptr inbounds %struct.integrator, %struct.integrator* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fadd double %29, %26
  store double %30, double* %28, align 8
  %31 = load %struct.integrator*, %struct.integrator** %5, align 8
  %32 = getelementptr inbounds %struct.integrator, %struct.integrator* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fadd double %33, 1.000000e+00
  store double %34, double* %32, align 8
  %35 = load %struct.integrator*, %struct.integrator** %5, align 8
  %36 = getelementptr inbounds %struct.integrator, %struct.integrator* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.integrator*, %struct.integrator** %5, align 8
  %39 = getelementptr inbounds %struct.integrator, %struct.integrator* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = fdiv double %37, %40
  store double %41, double* %10, align 8
  %42 = load double, double* %10, align 8
  %43 = fcmp une double %42, 0.000000e+00
  br i1 %43, label %45, label %44

44:                                               ; preds = %4
  store double 0x3D719799812DEA11, double* %10, align 8
  br label %45

45:                                               ; preds = %44, %4
  %46 = load double, double* %10, align 8
  %47 = call double @LOUDNESS(double %46)
  %48 = load i32, i32* %8, align 4
  %49 = sitofp i32 %48 to double
  %50 = fadd double %47, %49
  %51 = load %struct.integrator*, %struct.integrator** %5, align 8
  %52 = getelementptr inbounds %struct.integrator, %struct.integrator* %51, i32 0, i32 2
  store double %50, double* %52, align 8
  %53 = load %struct.integrator*, %struct.integrator** %5, align 8
  %54 = getelementptr inbounds %struct.integrator, %struct.integrator* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  %56 = call i32 @HIST_POS(double %55)
  %57 = load i64, i64* @HIST_SIZE, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call i32 @av_clip(i32 %56, i32 0, i64 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local i32 @av_clip(i32, i32, i64) #1

declare dso_local i32 @HIST_POS(double) #1

declare dso_local double @LOUDNESS(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
