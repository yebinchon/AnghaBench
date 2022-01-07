; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_planarize_float.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_planarize_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i64)* @planarize_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @planarize_float(float* %0, float* %1, i64 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %33, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load float*, float** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 2, %14
  %16 = add i64 %15, 0
  %17 = getelementptr inbounds float, float* %13, i64 %16
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds float, float* %19, i64 %20
  store float %18, float* %21, align 4
  %22 = load float*, float** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 2, %23
  %25 = add i64 %24, 1
  %26 = getelementptr inbounds float, float* %22, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  %32 = getelementptr inbounds float, float* %28, i64 %31
  store float %27, float* %32, align 4
  br label %33

33:                                               ; preds = %12
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %8

36:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
