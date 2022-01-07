; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_col2im.c_col2im_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_col2im.c_col2im_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @col2im_cpu(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, float* %7) #0 {
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
  %29 = alloca double, align 8
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float* %7, float** %16, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %15, align 4
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %30, %32
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %14, align 4
  %37 = sdiv i32 %35, %36
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %15, align 4
  %41 = mul nsw i32 2, %40
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %14, align 4
  %46 = sdiv i32 %44, %45
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %124, %8
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %22, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %127

57:                                               ; preds = %53
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %13, align 4
  %60 = srem i32 %58, %59
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* %24, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %25, align 4
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %120, %57
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %123

75:                                               ; preds = %71
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %116, %75
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %21, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %76
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  store i32 %85, i32* %26, align 4
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  store i32 %90, i32* %27, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %20, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %21, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %28, align 4
  %100 = load float*, float** %9, align 8
  %101 = load i32, i32* %28, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = fpext float %104 to double
  store double %105, double* %29, align 8
  %106 = load float*, float** %16, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* %27, align 4
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load double, double* %29, align 8
  %115 = call i32 @col2im_add_pixel(float* %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, double %114)
  br label %116

116:                                              ; preds = %80
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %76

119:                                              ; preds = %76
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %71

123:                                              ; preds = %71
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %53

127:                                              ; preds = %53
  ret void
}

declare dso_local i32 @col2im_add_pixel(float*, i32, i32, i32, i32, i32, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
