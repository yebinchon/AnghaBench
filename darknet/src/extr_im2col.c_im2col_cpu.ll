; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_im2col.c_im2col_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_im2col.c_im2col_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @im2col_cpu(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, float* %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float* %7, float** %16, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %15, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %14, align 4
  %36 = sdiv i32 %34, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %15, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %14, align 4
  %45 = sdiv i32 %43, %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %13, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %52

52:                                               ; preds = %120, %8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %22, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %52
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %13, align 4
  %59 = srem i32 %57, %58
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = srem i32 %62, %63
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sdiv i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %25, align 4
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %116, %56
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %119

74:                                               ; preds = %70
  store i32 0, i32* %19, align 4
  br label %75

75:                                               ; preds = %112, %74
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load i32, i32* %24, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %26, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %14, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %20, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %21, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %28, align 4
  %99 = load float*, float** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %26, align 4
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %25, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call float @im2col_get_pixel(float* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load float*, float** %16, align 8
  %109 = load i32, i32* %28, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  store float %107, float* %111, align 4
  br label %112

112:                                              ; preds = %79
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %75

115:                                              ; preds = %75
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %70

119:                                              ; preds = %70
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %52

123:                                              ; preds = %52
  ret void
}

declare dso_local float @im2col_get_pixel(float*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
