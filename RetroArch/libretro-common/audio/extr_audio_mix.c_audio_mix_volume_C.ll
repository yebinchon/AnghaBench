; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mix.c_audio_mix_volume_C.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mix.c_audio_mix_volume_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_mix_volume_C(float* %0, float* %1, float %2, i64 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %26, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load float*, float** %6, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds float, float* %15, i64 %16
  %18 = load float, float* %17, align 4
  %19 = load float, float* %7, align 4
  %20 = fmul float %18, %19
  %21 = load float*, float** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds float, float* %21, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fadd float %24, %20
  store float %25, float* %23, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  br label %10

29:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
