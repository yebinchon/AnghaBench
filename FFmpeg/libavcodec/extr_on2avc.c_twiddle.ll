; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_twiddle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_twiddle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32, double*, i32, i32, i32, i32, double**)* @twiddle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twiddle(float* %0, float* %1, i32 %2, double* %3, i32 %4, i32 %5, i32 %6, i32 %7, double** %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca double*, align 8
  store float* %0, float** %10, align 8
  store float* %1, float** %11, align 8
  store i32 %2, i32* %12, align 4
  store double* %3, double** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store double** %8, double*** %18, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %14, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %15, align 4
  %30 = sdiv i32 %28, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %19, align 4
  %32 = load float*, float** %10, align 8
  %33 = load float*, float** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load double**, double*** %18, align 8
  %40 = call i32 @pretwiddle(float* %32, float* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, double** %39)
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %43

43:                                               ; preds = %153, %9
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %156

47:                                               ; preds = %43
  %48 = load float*, float** %10, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %21, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %48, i64 %52
  %54 = load float, float* %53, align 4
  store float %54, float* %23, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %20, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %121

62:                                               ; preds = %47
  %63 = load double*, double** %13, align 8
  store double* %63, double** %25, align 8
  %64 = load i32, i32* %24, align 4
  store i32 %64, i32* %22, align 4
  br label %65

65:                                               ; preds = %83, %62
  %66 = load i32, i32* %22, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load float, float* %23, align 4
  %70 = fpext float %69 to double
  %71 = load double*, double** %25, align 8
  %72 = getelementptr inbounds double, double* %71, i32 1
  store double* %72, double** %25, align 8
  %73 = load double, double* %71, align 8
  %74 = fmul double %70, %73
  %75 = load float*, float** %11, align 8
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = fadd double %80, %74
  %82 = fptrunc double %81 to float
  store float %82, float* %78, align 4
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %22, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %22, align 4
  br label %65

86:                                               ; preds = %65
  store i32 0, i32* %22, align 4
  br label %87

87:                                               ; preds = %117, %86
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %24, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %87
  %95 = load float, float* %23, align 4
  %96 = fpext float %95 to double
  %97 = load double*, double** %13, align 8
  %98 = load i32, i32* %24, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %22, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %97, i64 %102
  %104 = load double, double* %103, align 8
  %105 = fmul double %96, %104
  %106 = load float*, float** %11, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %22, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %106, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fpext float %113 to double
  %115 = fadd double %114, %105
  %116 = fptrunc double %115 to float
  store float %116, float* %112, align 4
  br label %117

117:                                              ; preds = %94
  %118 = load i32, i32* %22, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %22, align 4
  br label %87

120:                                              ; preds = %87
  br label %149

121:                                              ; preds = %47
  store i32 0, i32* %22, align 4
  br label %122

122:                                              ; preds = %145, %121
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %122
  %127 = load float, float* %23, align 4
  %128 = fpext float %127 to double
  %129 = load double*, double** %13, align 8
  %130 = load i32, i32* %22, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  %133 = load double, double* %132, align 8
  %134 = fmul double %128, %133
  %135 = load float*, float** %11, align 8
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %22, align 4
  %138 = sub nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %135, i64 %139
  %141 = load float, float* %140, align 4
  %142 = fpext float %141 to double
  %143 = fadd double %142, %134
  %144 = fptrunc double %143 to float
  store float %144, float* %140, align 4
  br label %145

145:                                              ; preds = %126
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  br label %122

148:                                              ; preds = %122
  br label %149

149:                                              ; preds = %148, %120
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %21, align 4
  br label %43

156:                                              ; preds = %43
  ret void
}

declare dso_local i32 @pretwiddle(float*, float*, i32, i32, i32, i32, i32, double**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
