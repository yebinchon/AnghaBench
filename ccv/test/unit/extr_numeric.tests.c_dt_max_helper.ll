; ModuleID = '/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_dt_max_helper.c'
source_filename = "/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_dt_max_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_max_helper(float* %0, float* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, float %9) #0 {
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store float* %0, float** %11, align 8
  store float* %1, float** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %146

27:                                               ; preds = %10
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = add nsw i32 %28, %29
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %23, align 4
  br label %35

35:                                               ; preds = %86, %27
  %36 = load i32, i32* %23, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = load float*, float** %11, align 8
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* %14, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %40, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float, float* %19, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %22, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call float @square(i32 %50)
  %52 = fmul float %47, %51
  %53 = fsub float %46, %52
  %54 = load float, float* %20, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %22, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sitofp i32 %57 to float
  %59 = fmul float %54, %58
  %60 = fsub float %53, %59
  %61 = load float*, float** %11, align 8
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %14, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float, float* %19, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %23, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call float @square(i32 %71)
  %73 = fmul float %68, %72
  %74 = fsub float %67, %73
  %75 = load float, float* %20, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %23, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sitofp i32 %78 to float
  %80 = fmul float %75, %79
  %81 = fsub float %74, %80
  %82 = fcmp olt float %60, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %39
  %84 = load i32, i32* %23, align 4
  store i32 %84, i32* %22, align 4
  br label %85

85:                                               ; preds = %83, %39
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %23, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %23, align 4
  br label %35

89:                                               ; preds = %35
  %90 = load float*, float** %11, align 8
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %14, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %90, i64 %94
  %96 = load float, float* %95, align 4
  %97 = load float, float* %19, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call float @square(i32 %100)
  %102 = fmul float %97, %101
  %103 = fsub float %96, %102
  %104 = load float, float* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %22, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sitofp i32 %107 to float
  %109 = fmul float %104, %108
  %110 = fsub float %103, %109
  %111 = load float*, float** %12, align 8
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %14, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %111, i64 %115
  store float %110, float* %116, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %14, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load float*, float** %11, align 8
  %125 = load float*, float** %12, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %21, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load float, float* %19, align 4
  %134 = load float, float* %20, align 4
  call void @dt_max_helper(float* %124, float* %125, i32* %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %132, float %133, float %134)
  %135 = load float*, float** %11, align 8
  %136 = load float*, float** %12, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32, i32* %18, align 4
  %144 = load float, float* %19, align 4
  %145 = load float, float* %20, align 4
  call void @dt_max_helper(float* %135, float* %136, i32* %137, i32 %138, i32 %139, i32 %140, i32 %142, i32 %143, float %144, float %145)
  br label %146

146:                                              ; preds = %89, %10
  ret void
}

declare dso_local float @square(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
