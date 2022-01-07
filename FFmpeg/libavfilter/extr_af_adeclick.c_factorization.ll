; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_factorization.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_factorization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, i32)* @factorization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @factorization(double* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %147, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %150

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load double*, double** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %21, i64 %25
  %27 = load double, double* %26, align 8
  store double %27, double* %10, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %60, %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load double*, double** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %33, i64 %39
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %42, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fmul double %41, %48
  %50 = load double*, double** %4, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %50, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fmul double %49, %56
  %58 = load double, double* %10, align 8
  %59 = fsub double %58, %57
  store double %59, double* %10, align 8
  br label %60

60:                                               ; preds = %32
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %28

63:                                               ; preds = %28
  %64 = load double, double* %10, align 8
  %65 = fcmp oeq double %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %151

67:                                               ; preds = %63
  %68 = load double, double* %10, align 8
  %69 = load double*, double** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %69, i64 %73
  store double %68, double* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %143, %67
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %146

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %82, %83
  store i32 %84, i32* %11, align 4
  %85 = load double*, double** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %85, i64 %89
  %91 = load double, double* %90, align 8
  store double %91, double* %12, align 8
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %124, %81
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = load double*, double** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %97, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double*, double** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %106, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fmul double %105, %112
  %114 = load double*, double** %4, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %114, i64 %118
  %120 = load double, double* %119, align 8
  %121 = fmul double %113, %120
  %122 = load double, double* %12, align 8
  %123 = fsub double %122, %121
  store double %123, double* %12, align 8
  br label %124

124:                                              ; preds = %96
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %92

127:                                              ; preds = %92
  %128 = load double, double* %12, align 8
  %129 = load double*, double** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %129, i64 %133
  %135 = load double, double* %134, align 8
  %136 = fdiv double %128, %135
  %137 = load double*, double** %4, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double, double* %137, i64 %141
  store double %136, double* %142, align 8
  br label %143

143:                                              ; preds = %127
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %77

146:                                              ; preds = %77
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %13

150:                                              ; preds = %13
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %66
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
