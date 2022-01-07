; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_downmix_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_downmix_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32, i32, i32)* @ac3_downmix_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac3_downmix_c(float** %0, float** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float**, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float** %0, float*** %6, align 8
  store float** %1, float*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %88

17:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %84, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %18
  store float 0.000000e+00, float* %14, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %66, %22
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = load float**, float*** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float*, float** %28, i64 %30
  %32 = load float*, float** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = load float**, float*** %7, align 8
  %38 = getelementptr inbounds float*, float** %37, i64 0
  %39 = load float*, float** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fmul float %36, %43
  %45 = load float, float* %13, align 4
  %46 = fadd float %45, %44
  store float %46, float* %13, align 4
  %47 = load float**, float*** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float*, float** %47, i64 %49
  %51 = load float*, float** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load float**, float*** %7, align 8
  %57 = getelementptr inbounds float*, float** %56, i64 1
  %58 = load float*, float** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = fmul float %55, %62
  %64 = load float, float* %14, align 4
  %65 = fadd float %64, %63
  store float %65, float* %14, align 4
  br label %66

66:                                               ; preds = %27
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %23

69:                                               ; preds = %23
  %70 = load float, float* %13, align 4
  %71 = load float**, float*** %6, align 8
  %72 = getelementptr inbounds float*, float** %71, i64 0
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  store float %70, float* %76, align 4
  %77 = load float, float* %14, align 4
  %78 = load float**, float*** %6, align 8
  %79 = getelementptr inbounds float*, float** %78, i64 1
  %80 = load float*, float** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float %77, float* %83, align 4
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %18

87:                                               ; preds = %18
  br label %137

88:                                               ; preds = %5
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %136

91:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %132, %91
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %92
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load float**, float*** %6, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float*, float** %102, i64 %104
  %106 = load float*, float** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load float**, float*** %7, align 8
  %112 = getelementptr inbounds float*, float** %111, i64 0
  %113 = load float*, float** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fmul float %110, %117
  %119 = load float, float* %13, align 4
  %120 = fadd float %119, %118
  store float %120, float* %13, align 4
  br label %121

121:                                              ; preds = %101
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %97

124:                                              ; preds = %97
  %125 = load float, float* %13, align 4
  %126 = load float**, float*** %6, align 8
  %127 = getelementptr inbounds float*, float** %126, i64 0
  %128 = load float*, float** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  store float %125, float* %131, align 4
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %92

135:                                              ; preds = %92
  br label %136

136:                                              ; preds = %135, %88
  br label %137

137:                                              ; preds = %136, %87
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
