; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_celt_fir5.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_celt_fir5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, float*)* @celt_fir5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_fir5(float* %0, float* %1, float* %2, i32 %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %23 = load float*, float** %7, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  %25 = load float, float* %24, align 4
  store float %25, float* %11, align 4
  %26 = load float*, float** %7, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  store float %28, float* %12, align 4
  %29 = load float*, float** %7, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  store float %31, float* %13, align 4
  %32 = load float*, float** %7, align 8
  %33 = getelementptr inbounds float, float* %32, i64 3
  %34 = load float, float* %33, align 4
  store float %34, float* %14, align 4
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 4
  %37 = load float, float* %36, align 4
  store float %37, float* %15, align 4
  %38 = load float*, float** %10, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  store float %40, float* %16, align 4
  %41 = load float*, float** %10, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  store float %43, float* %17, align 4
  %44 = load float*, float** %10, align 8
  %45 = getelementptr inbounds float, float* %44, i64 2
  %46 = load float, float* %45, align 4
  store float %46, float* %18, align 4
  %47 = load float*, float** %10, align 8
  %48 = getelementptr inbounds float, float* %47, i64 3
  %49 = load float, float* %48, align 4
  store float %49, float* %19, align 4
  %50 = load float*, float** %10, align 8
  %51 = getelementptr inbounds float, float* %50, i64 4
  %52 = load float, float* %51, align 4
  store float %52, float* %20, align 4
  store i32 0, i32* %21, align 4
  br label %53

53:                                               ; preds = %102, %5
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %53
  %58 = load float*, float** %6, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  store float %62, float* %22, align 4
  %63 = load float, float* %11, align 4
  %64 = load float, float* %16, align 4
  %65 = fmul float %63, %64
  %66 = load float, float* %22, align 4
  %67 = fadd float %66, %65
  store float %67, float* %22, align 4
  %68 = load float, float* %12, align 4
  %69 = load float, float* %17, align 4
  %70 = fmul float %68, %69
  %71 = load float, float* %22, align 4
  %72 = fadd float %71, %70
  store float %72, float* %22, align 4
  %73 = load float, float* %13, align 4
  %74 = load float, float* %18, align 4
  %75 = fmul float %73, %74
  %76 = load float, float* %22, align 4
  %77 = fadd float %76, %75
  store float %77, float* %22, align 4
  %78 = load float, float* %14, align 4
  %79 = load float, float* %19, align 4
  %80 = fmul float %78, %79
  %81 = load float, float* %22, align 4
  %82 = fadd float %81, %80
  store float %82, float* %22, align 4
  %83 = load float, float* %15, align 4
  %84 = load float, float* %20, align 4
  %85 = fmul float %83, %84
  %86 = load float, float* %22, align 4
  %87 = fadd float %86, %85
  store float %87, float* %22, align 4
  %88 = load float, float* %19, align 4
  store float %88, float* %20, align 4
  %89 = load float, float* %18, align 4
  store float %89, float* %19, align 4
  %90 = load float, float* %17, align 4
  store float %90, float* %18, align 4
  %91 = load float, float* %16, align 4
  store float %91, float* %17, align 4
  %92 = load float*, float** %6, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  %96 = load float, float* %95, align 4
  store float %96, float* %16, align 4
  %97 = load float, float* %22, align 4
  %98 = load float*, float** %8, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  store float %97, float* %101, align 4
  br label %102

102:                                              ; preds = %57
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %53

105:                                              ; preds = %53
  %106 = load float, float* %16, align 4
  %107 = load float*, float** %10, align 8
  %108 = getelementptr inbounds float, float* %107, i64 0
  store float %106, float* %108, align 4
  %109 = load float, float* %17, align 4
  %110 = load float*, float** %10, align 8
  %111 = getelementptr inbounds float, float* %110, i64 1
  store float %109, float* %111, align 4
  %112 = load float, float* %18, align 4
  %113 = load float*, float** %10, align 8
  %114 = getelementptr inbounds float, float* %113, i64 2
  store float %112, float* %114, align 4
  %115 = load float, float* %19, align 4
  %116 = load float*, float** %10, align 8
  %117 = getelementptr inbounds float, float* %116, i64 3
  store float %115, float* %117, align 4
  %118 = load float, float* %20, align 4
  %119 = load float*, float** %10, align 8
  %120 = getelementptr inbounds float, float* %119, i64 4
  store float %118, float* %120, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
