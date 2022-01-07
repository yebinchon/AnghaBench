; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_decode_3_pulses_10bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_decode_3_pulses_10bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*)* @decode_3_pulses_10bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_3_pulses_10bits(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float* %1, float** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 512
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, double -1.000000e+00, double 1.000000e+00
  %12 = fptrunc double %11 to float
  store float %12, float* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 7
  %15 = mul nsw i32 %14, 7
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %6, align 4
  %17 = load float, float* %5, align 4
  %18 = load float*, float** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4
  %23 = fadd float %22, %17
  store float %23, float* %21, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 7
  %27 = mul nsw i32 %26, 7
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %6, align 4
  %29 = load float, float* %5, align 4
  %30 = load float*, float** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fsub float %34, %29
  store float %35, float* %33, align 4
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 6
  %38 = and i32 %37, 7
  %39 = mul nsw i32 %38, 7
  store i32 %39, i32* %6, align 4
  %40 = load float, float* %5, align 4
  %41 = load float*, float** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fadd float %45, %40
  store float %46, float* %44, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
