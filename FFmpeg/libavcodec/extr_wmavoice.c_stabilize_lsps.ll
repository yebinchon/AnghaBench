; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_stabilize_lsps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_stabilize_lsps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32)* @stabilize_lsps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stabilize_lsps(double* %0, i32 %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store double* %0, double** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load double*, double** %3, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = load double, double* @M_PI, align 8
  %13 = fmul double 1.500000e-03, %12
  %14 = call double @FFMAX(double %11, double %13)
  %15 = load double*, double** %3, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  store double %14, double* %16, align 8
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %41, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load double*, double** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load double*, double** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %27, i64 %30
  %32 = load double, double* %31, align 8
  %33 = load double, double* @M_PI, align 8
  %34 = fmul double 1.250000e-02, %33
  %35 = fadd double %32, %34
  %36 = call double @FFMAX(double %26, double %35)
  %37 = load double*, double** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  store double %36, double* %40, align 8
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load double*, double** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %45, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double, double* @M_PI, align 8
  %52 = fmul double 9.985000e-01, %51
  %53 = call double @FFMIN(double %50, double %52)
  %54 = load double*, double** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  store double %53, double* %58, align 8
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %127, %44
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %130

63:                                               ; preds = %59
  %64 = load double*, double** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load double*, double** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %69, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fcmp olt double %68, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %63
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %122, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %125

81:                                               ; preds = %77
  %82 = load double*, double** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  store double %86, double* %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %112, %81
  %90 = load i32, i32* %7, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load double*, double** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  %97 = load double, double* %96, align 8
  %98 = load double, double* %8, align 8
  %99 = fcmp ole double %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %115

101:                                              ; preds = %92
  %102 = load double*, double** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  %106 = load double, double* %105, align 8
  %107 = load double*, double** %3, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %107, i64 %110
  store double %106, double* %111, align 8
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %7, align 4
  br label %89

115:                                              ; preds = %100, %89
  %116 = load double, double* %8, align 8
  %117 = load double*, double** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %117, i64 %120
  store double %116, double* %121, align 8
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %77

125:                                              ; preds = %77
  br label %130

126:                                              ; preds = %63
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %59

130:                                              ; preds = %125, %59
  ret void
}

declare dso_local double @FFMAX(double, double) #1

declare dso_local double @FFMIN(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
