; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lpc.c_quantize_lpc_coefs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lpc.c_quantize_lpc_coefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32, i32, double*, i32*, i32, i32, i32)* @quantize_lpc_coefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quantize_lpc_coefs(double* %0, i32 %1, i32 %2, double* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  store double* %0, double** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store double* %3, double** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 1
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = sitofp i32 %26 to double
  store double %27, double* %20, align 8
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %41, %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load double, double* %18, align 8
  %34 = load double*, double** %9, align 8
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call i32 @fabs(double %38)
  %40 = call double @FFMAX(double %33, i32 %39)
  store double %40, double* %18, align 8
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %17, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load double, double* %18, align 8
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 1, %46
  %48 = sitofp i32 %47 to double
  %49 = fmul double %45, %48
  %50 = fcmp olt double %49, 1.000000e+00
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32, i32* %16, align 4
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  %54 = load double*, double** %12, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(double* %54, i32 0, i32 %58)
  br label %146

60:                                               ; preds = %44
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %21, align 4
  br label %62

62:                                               ; preds = %76, %60
  %63 = load double, double* %18, align 8
  %64 = load i32, i32* %21, align 4
  %65 = shl i32 1, %64
  %66 = sitofp i32 %65 to double
  %67 = fmul double %63, %66
  %68 = load double, double* %20, align 8
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %62
  %75 = phi i1 [ false, %62 ], [ %73, %70 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %21, align 4
  br label %62

79:                                               ; preds = %74
  %80 = load i32, i32* %21, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = load double, double* %18, align 8
  %84 = load double, double* %20, align 8
  %85 = fcmp ogt double %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  %87 = load double, double* %20, align 8
  %88 = load double, double* %18, align 8
  %89 = fdiv double %87, %88
  store double %89, double* %22, align 8
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %102, %86
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load double, double* %22, align 8
  %96 = load double*, double** %9, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fmul double %100, %95
  store double %101, double* %99, align 8
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %17, align 4
  br label %90

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %82, %79
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %17, align 4
  br label %107

107:                                              ; preds = %140, %106
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %107
  %112 = load double*, double** %9, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  %116 = load double, double* %115, align 8
  %117 = load i32, i32* %21, align 4
  %118 = shl i32 1, %117
  %119 = sitofp i32 %118 to double
  %120 = fmul double %116, %119
  %121 = load double, double* %19, align 8
  %122 = fsub double %121, %120
  store double %122, double* %19, align 8
  %123 = load double, double* %19, align 8
  %124 = call i32 @lrintf(double %123)
  %125 = load double, double* %20, align 8
  %126 = fneg double %125
  %127 = load double, double* %20, align 8
  %128 = call double @av_clip(i32 %124, double %126, double %127)
  %129 = load double*, double** %12, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  store double %128, double* %132, align 8
  %133 = load double*, double** %12, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %133, i64 %135
  %137 = load double, double* %136, align 8
  %138 = load double, double* %19, align 8
  %139 = fsub double %138, %137
  store double %139, double* %19, align 8
  br label %140

140:                                              ; preds = %111
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %107

143:                                              ; preds = %107
  %144 = load i32, i32* %21, align 4
  %145 = load i32*, i32** %13, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %51
  ret void
}

declare dso_local double @FFMAX(double, i32) #1

declare dso_local i32 @fabs(double) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local double @av_clip(i32, double, double) #1

declare dso_local i32 @lrintf(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
