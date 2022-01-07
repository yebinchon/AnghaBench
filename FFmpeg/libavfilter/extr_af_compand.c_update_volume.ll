; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_compand.c_update_volume.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_compand.c_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double)* @update_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_volume(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fsub double %6, %9
  store double %10, double* %5, align 8
  %11 = load double, double* %5, align 8
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load double, double* %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %14, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fadd double %21, %18
  store double %22, double* %20, align 8
  br label %33

23:                                               ; preds = %2
  %24 = load double, double* %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load double, double* %26, align 8
  %28 = fmul double %24, %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = fadd double %31, %28
  store double %32, double* %30, align 8
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
