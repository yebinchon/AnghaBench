; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_fcmul_add_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_fcmul_add_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @fcmul_add_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcmul_add_c(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %74, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = load float*, float** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %19, i64 %22
  %24 = load float, float* %23, align 4
  store float %24, float* %10, align 4
  %25 = load float*, float** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %25, i64 %29
  %31 = load float, float* %30, align 4
  store float %31, float* %11, align 4
  %32 = load float*, float** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %32, i64 %35
  %37 = load float, float* %36, align 4
  store float %37, float* %12, align 4
  %38 = load float*, float** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %38, i64 %42
  %44 = load float, float* %43, align 4
  store float %44, float* %13, align 4
  %45 = load float, float* %12, align 4
  %46 = load float, float* %10, align 4
  %47 = fmul float %45, %46
  %48 = load float, float* %13, align 4
  %49 = load float, float* %11, align 4
  %50 = fmul float %48, %49
  %51 = fsub float %47, %50
  %52 = load float*, float** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 2, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %52, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, %51
  store float %58, float* %56, align 4
  %59 = load float, float* %12, align 4
  %60 = load float, float* %11, align 4
  %61 = fmul float %59, %60
  %62 = load float, float* %13, align 4
  %63 = load float, float* %10, align 4
  %64 = fmul float %62, %63
  %65 = fadd float %61, %64
  %66 = load float*, float** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %66, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %65
  store float %73, float* %71, align 4
  br label %74

74:                                               ; preds = %18
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %14

77:                                               ; preds = %14
  %78 = load float*, float** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %78, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %84, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fmul float %83, %89
  %91 = load float*, float** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 2, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %91, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fadd float %96, %90
  store float %97, float* %95, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
