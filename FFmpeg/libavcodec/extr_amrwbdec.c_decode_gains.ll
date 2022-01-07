; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_gains.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_8k85 = common dso_local global i32 0, align 4
@qua_gain_6b = common dso_local global float** null, align 8
@qua_gain_7b = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, float*, float*)* @decode_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_gains(i64 %0, i32 %1, float* %2, float* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MODE_8k85, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load float**, float*** @qua_gain_6b, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds float*, float** %14, i64 %15
  %17 = load float*, float** %16, align 8
  br label %23

18:                                               ; preds = %4
  %19 = load float**, float*** @qua_gain_7b, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds float*, float** %19, i64 %20
  %22 = load float*, float** %21, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi float* [ %17, %13 ], [ %22, %18 ]
  store float* %24, float** %9, align 8
  %25 = load float*, float** %9, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = fmul float %27, 0x3F10000000000000
  %29 = load float*, float** %8, align 8
  store float %28, float* %29, align 4
  %30 = load float*, float** %9, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %31, align 4
  %33 = fmul float %32, 0x3F40000000000000
  %34 = load float*, float** %7, align 8
  store float %33, float* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
