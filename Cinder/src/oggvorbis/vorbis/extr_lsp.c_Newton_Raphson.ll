; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_Newton_Raphson.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_Newton_Raphson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, i32, float*)* @Newton_Raphson to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Newton_Raphson(float* %0, i32 %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store i32 0, i32* %10, align 4
  store double 1.000000e+00, double* %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call double* @alloca(i32 %20)
  store double* %21, double** %12, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %37, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load float*, float** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = load double*, double** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  store double %32, double* %36, align 8
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %22

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %108, %40
  %42 = load double, double* %11, align 8
  %43 = fcmp ogt double %42, 0x3BC79CA10C924223
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %45
  store double 0.000000e+00, double* %13, align 8
  %50 = load double*, double** %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  store double %54, double* %15, align 8
  %55 = load float*, float** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  store double %60, double* %16, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %82, %49
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load double, double* %13, align 8
  %68 = load double, double* %15, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* %16, align 8
  %71 = fadd double %69, %70
  store double %71, double* %13, align 8
  %72 = load double, double* %16, align 8
  %73 = load double, double* %15, align 8
  %74 = fmul double %72, %73
  %75 = load float*, float** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = fadd double %74, %80
  store double %81, double* %16, align 8
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %63

85:                                               ; preds = %63
  %86 = load double, double* %16, align 8
  %87 = load double, double* %13, align 8
  %88 = fdiv double %86, %87
  store double %88, double* %14, align 8
  %89 = load double, double* %14, align 8
  %90 = load double*, double** %12, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fsub double %94, %89
  store double %95, double* %93, align 8
  %96 = load double, double* %14, align 8
  %97 = load double, double* %14, align 8
  %98 = fmul double %96, %97
  %99 = load double, double* %11, align 8
  %100 = fadd double %99, %98
  store double %100, double* %11, align 8
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %45

104:                                              ; preds = %45
  %105 = load i32, i32* %10, align 4
  %106 = icmp sgt i32 %105, 40
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -1, i32* %4, align 4
  br label %131

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %41

111:                                              ; preds = %41
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %127, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load double*, double** %12, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  %121 = load double, double* %120, align 8
  %122 = fptrunc double %121 to float
  %123 = load float*, float** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  store float %122, float* %126, align 4
  br label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %112

130:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %107
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local double* @alloca(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
