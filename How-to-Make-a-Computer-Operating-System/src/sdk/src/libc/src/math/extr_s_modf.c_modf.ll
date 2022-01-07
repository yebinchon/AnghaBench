; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/math/extr_s_modf.c_modf.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/math/extr_s_modf.c_modf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @modf(double %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load double, double* %4, align 8
  %13 = call i32 @EXTRACT_WORDS(i32 %10, i32 %11, double %12)
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 20
  %16 = and i32 %15, 2047
  %17 = sub nsw i32 %16, 1023
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 20
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load double*, double** %5, align 8
  %25 = load double, double* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, -2147483648
  %28 = call i32 @INSERT_WORDS(double %25, i32 %27, i32 0)
  %29 = load double, double* %4, align 8
  store double %29, double* %3, align 8
  br label %114

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 1048575, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load double, double* %4, align 8
  %41 = load double*, double** %5, align 8
  store double %40, double* %41, align 8
  %42 = load double, double* %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, -2147483648
  %45 = call i32 @INSERT_WORDS(double %42, i32 %44, i32 0)
  %46 = load double, double* %4, align 8
  store double %46, double* %3, align 8
  br label %114

47:                                               ; preds = %30
  %48 = load double*, double** %5, align 8
  %49 = load double, double* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @INSERT_WORDS(double %49, i32 %53, i32 0)
  %55 = load double, double* %4, align 8
  %56 = load double*, double** %5, align 8
  %57 = load double, double* %56, align 8
  %58 = fsub double %55, %57
  store double %58, double* %3, align 8
  br label %114

59:                                               ; preds = %2
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 51
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load double, double* %4, align 8
  %64 = load double, double* @one, align 8
  %65 = fmul double %63, %64
  %66 = load double*, double** %5, align 8
  store double %65, double* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 1024
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 1048575
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load double, double* %4, align 8
  %77 = load double, double* @one, align 8
  %78 = fmul double %76, %77
  store double %78, double* %3, align 8
  br label %114

79:                                               ; preds = %69, %62
  %80 = load double, double* %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, -2147483648
  %83 = call i32 @INSERT_WORDS(double %80, i32 %82, i32 0)
  %84 = load double, double* %4, align 8
  store double %84, double* %3, align 8
  br label %114

85:                                               ; preds = %59
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 20
  %88 = ashr i32 -1, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load double, double* %4, align 8
  %95 = load double*, double** %5, align 8
  store double %94, double* %95, align 8
  %96 = load double, double* %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, -2147483648
  %99 = call i32 @INSERT_WORDS(double %96, i32 %98, i32 0)
  %100 = load double, double* %4, align 8
  store double %100, double* %3, align 8
  br label %114

101:                                              ; preds = %85
  %102 = load double*, double** %5, align 8
  %103 = load double, double* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %9, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = call i32 @INSERT_WORDS(double %103, i32 %104, i32 %108)
  %110 = load double, double* %4, align 8
  %111 = load double*, double** %5, align 8
  %112 = load double, double* %111, align 8
  %113 = fsub double %110, %112
  store double %113, double* %3, align 8
  br label %114

114:                                              ; preds = %101, %93, %79, %75, %47, %39, %23
  %115 = load double, double* %3, align 8
  ret double %115
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
