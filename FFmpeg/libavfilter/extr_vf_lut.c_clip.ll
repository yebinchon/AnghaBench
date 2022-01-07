; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_clip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@VAR_MINVAL = common dso_local global i64 0, align 8
@VAR_MAXVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, double)* @clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @clip(i8* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load double*, double** %11, align 8
  %13 = load i64, i64* @VAR_MINVAL, align 8
  %14 = getelementptr inbounds double, double* %12, i64 %13
  %15 = load double, double* %14, align 8
  store double %15, double* %6, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load double*, double** %17, align 8
  %19 = load i64, i64* @VAR_MAXVAL, align 8
  %20 = getelementptr inbounds double, double* %18, i64 %19
  %21 = load double, double* %20, align 8
  store double %21, double* %7, align 8
  %22 = load double, double* %4, align 8
  %23 = load double, double* %6, align 8
  %24 = load double, double* %7, align 8
  %25 = call double @av_clip(double %22, double %23, double %24)
  ret double %25
}

declare dso_local double @av_clip(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
