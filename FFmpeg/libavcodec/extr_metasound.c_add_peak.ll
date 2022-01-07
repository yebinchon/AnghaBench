; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_metasound.c_add_peak.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_metasound.c_add_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, i32, float*, float, float*, i32)* @add_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_peak(float %0, i32 %1, float* %2, float %3, float* %4, i32 %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  store float %0, float* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load float*, float** %9, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %17, i64 %19
  store float* %20, float** %16, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %38, %6
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 2
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load float, float* %10, align 4
  %28 = load float*, float** %9, align 8
  %29 = getelementptr inbounds float, float* %28, i32 1
  store float* %29, float** %9, align 8
  %30 = load float, float* %28, align 4
  %31 = fmul float %27, %30
  %32 = load float*, float** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fadd float %36, %31
  store float %37, float* %35, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %21

41:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ROUNDED_DIV(i32 %44, i32 %45)
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = sitofp i32 %49 to float
  %51 = load float, float* %7, align 4
  %52 = fmul float %50, %51
  %53 = fpext float %52 to double
  %54 = fadd double %53, 5.000000e-01
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 0, %56
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %79, %48
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = sdiv i32 %62, 2
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load float, float* %10, align 4
  %67 = load float*, float** %9, align 8
  %68 = getelementptr inbounds float, float* %67, i32 1
  store float* %68, float** %9, align 8
  %69 = load float, float* %67, align 4
  %70 = fmul float %66, %69
  %71 = load float*, float** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %71, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fadd float %77, %70
  store float %78, float* %76, align 4
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %59

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %42

86:                                               ; preds = %42
  %87 = load i32, i32* %13, align 4
  %88 = sitofp i32 %87 to float
  %89 = load float, float* %7, align 4
  %90 = fmul float %88, %89
  %91 = fpext float %90 to double
  %92 = fadd double %91, 5.000000e-01
  %93 = fptosi double %92 to i32
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 0, %94
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %123, %86
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  %101 = sdiv i32 %100, 2
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load float*, float** %9, align 8
  %105 = load float*, float** %16, align 8
  %106 = icmp ult float* %104, %105
  br label %107

107:                                              ; preds = %103, %97
  %108 = phi i1 [ false, %97 ], [ %106, %103 ]
  br i1 %108, label %109, label %126

109:                                              ; preds = %107
  %110 = load float, float* %10, align 4
  %111 = load float*, float** %9, align 8
  %112 = getelementptr inbounds float, float* %111, i32 1
  store float* %112, float** %9, align 8
  %113 = load float, float* %111, align 4
  %114 = fmul float %110, %113
  %115 = load float*, float** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %115, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fadd float %121, %114
  store float %122, float* %120, align 4
  br label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %97

126:                                              ; preds = %107
  ret void
}

declare dso_local i32 @ROUNDED_DIV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
