; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/fft/extr_fft.c_resolve_float.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/fft/extr_fft.c_resolve_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, %struct.TYPE_3__*, i32, float, i32)* @resolve_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_float(float* %0, %struct.TYPE_3__* %1, i32 %2, float %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %23, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load float, float* %9, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = fmul float %17, %20
  %22 = load float*, float** %6, align 8
  store float %21, float* %22, align 4
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 1
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load float*, float** %6, align 8
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds float, float* %29, i64 %30
  store float* %31, float** %6, align 8
  br label %12

32:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
