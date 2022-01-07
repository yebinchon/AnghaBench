; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Matmul/extr_matmul_c.c_mm_mul.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Matmul/extr_matmul_c.c_mm_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double** @mm_mul(i32 %0, double** %1, double** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double**, align 8
  %6 = alloca double**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double**, align 8
  %11 = alloca double**, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double*, align 8
  store i32 %0, i32* %4, align 4
  store double** %1, double*** %5, align 8
  store double** %2, double*** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call double** @mm_init(i32 %16)
  store double** %17, double*** %10, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call double** @mm_init(i32 %18)
  store double** %19, double*** %11, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %51, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load double**, double*** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double**, double*** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  store double %38, double* %46, align 8
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %20

54:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %111, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %55
  %60 = load double**, double*** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double*, double** %60, i64 %62
  %64 = load double*, double** %63, align 8
  store double* %64, double** %12, align 8
  %65 = load double**, double*** %10, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double*, double** %65, i64 %67
  %69 = load double*, double** %68, align 8
  store double* %69, double** %13, align 8
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %107, %59
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  store double 0.000000e+00, double* %14, align 8
  %75 = load double**, double*** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double*, double** %75, i64 %77
  %79 = load double*, double** %78, align 8
  store double* %79, double** %15, align 8
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %98, %74
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load double*, double** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load double*, double** %15, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fmul double %89, %94
  %96 = load double, double* %14, align 8
  %97 = fadd double %96, %95
  store double %97, double* %14, align 8
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %80

101:                                              ; preds = %80
  %102 = load double, double* %14, align 8
  %103 = load double*, double** %13, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %103, i64 %105
  store double %102, double* %106, align 8
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %70

110:                                              ; preds = %70
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %55

114:                                              ; preds = %55
  %115 = load i32, i32* %4, align 4
  %116 = load double**, double*** %11, align 8
  %117 = call i32 @mm_destroy(i32 %115, double** %116)
  %118 = load double**, double*** %10, align 8
  ret double** %118
}

declare dso_local double** @mm_init(i32) #1

declare dso_local i32 @mm_destroy(i32, double**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
