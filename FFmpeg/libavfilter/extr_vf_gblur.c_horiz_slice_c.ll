; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_horiz_slice_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_horiz_slice_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32, float, float)* @horiz_slice_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @horiz_slice_c(float* %0, i32 %1, i32 %2, i32 %3, float %4, float %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %95, %6
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %91, %21
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %22
  %27 = load float*, float** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %27, i64 %31
  store float* %32, float** %16, align 8
  %33 = load float, float* %12, align 4
  %34 = load float*, float** %16, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = fmul float %36, %33
  store float %37, float* %35, align 4
  store i32 1, i32* %14, align 4
  br label %38

38:                                               ; preds = %57, %26
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load float, float* %11, align 4
  %44 = load float*, float** %16, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %44, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fmul float %43, %49
  %51 = load float*, float** %16, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fadd float %55, %50
  store float %56, float* %54, align 4
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load float, float* %12, align 4
  %62 = load float*, float** %16, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %62, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %67, %61
  store float %68, float* %66, align 4
  br label %69

69:                                               ; preds = %87, %60
  %70 = load i32, i32* %14, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load float, float* %11, align 4
  %74 = load float*, float** %16, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fmul float %73, %78
  %80 = load float*, float** %16, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %80, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, %79
  store float %86, float* %84, align 4
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %14, align 4
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %22

94:                                               ; preds = %22
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %17

98:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
