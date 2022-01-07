; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_models.c_deindex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_models.c_deindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i16*, i32, i32)* @deindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deindex(float* %0, float* %1, i16* %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i16* %2, i16** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %55, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = load i32, i32* %9, align 4
  %19 = load i16*, i16** %8, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 0
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %18, %23
  store i32 %24, i32* %12, align 4
  %25 = load float*, float** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %25, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %6, align 8
  %32 = getelementptr inbounds float, float* %31, i32 1
  store float* %32, float** %6, align 8
  store float %30, float* %31, align 4
  %33 = load float*, float** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %33, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %6, align 8
  %40 = getelementptr inbounds float, float* %39, i32 1
  store float* %40, float** %6, align 8
  store float %38, float* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %52

43:                                               ; preds = %17
  %44 = load float*, float** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %44, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %6, align 8
  %51 = getelementptr inbounds float, float* %50, i32 1
  store float* %51, float** %6, align 8
  store float %49, float* %50, align 4
  br label %52

52:                                               ; preds = %43, %17
  %53 = load i16*, i16** %8, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 3
  store i16* %54, i16** %8, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %13

58:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
