; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deflicker.c_deflicker8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deflicker.c_deflicker8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, float*, i32, float*, i32, i32, i32, float)* @deflicker8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflicker8(i32* %0, float* %1, i32 %2, float* %3, i32 %4, i32 %5, i32 %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store float* %3, float** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float %7, float* %16, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %53, %8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load float*, float** %10, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load float, float* %16, align 4
  %35 = fmul float %33, %34
  %36 = call float @av_clip_uint8(float %35)
  %37 = load float*, float** %12, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  store float %36, float* %40, align 4
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %17, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load i32, i32* %13, align 4
  %46 = load float*, float** %12, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds float, float* %46, i64 %47
  store float* %48, float** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load float*, float** %10, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds float, float* %50, i64 %51
  store float* %52, float** %10, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  br label %19

56:                                               ; preds = %19
  ret i32 0
}

declare dso_local float @av_clip_uint8(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
