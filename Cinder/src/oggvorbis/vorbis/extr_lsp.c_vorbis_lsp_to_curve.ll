; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_vorbis_lsp_to_curve.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_vorbis_lsp_to_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vorbis_lsp_to_curve(float* %0, i32* %1, i32 %2, i32 %3, float* %4, i32 %5, float %6, float %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store float* %0, float** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float* %4, float** %13, align 8
  store i32 %5, i32* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %24 = load i32, i32* @M_PI, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sdiv i32 %24, %25
  %27 = sitofp i32 %26 to float
  store float %27, float* %18, align 4
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %44, %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load float*, float** %13, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = call float @cos(float %37)
  %39 = fmul float 2.000000e+00, %38
  %40 = load float*, float** %13, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  store float %39, float* %43, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %17, align 4
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %164, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %165

52:                                               ; preds = %48
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %20, align 4
  store float 5.000000e-01, float* %21, align 4
  store float 5.000000e-01, float* %22, align 4
  %58 = load float, float* %18, align 4
  %59 = load i32, i32* %20, align 4
  %60 = sitofp i32 %59 to float
  %61 = fmul float %58, %60
  %62 = call float @cos(float %61)
  %63 = fmul float 2.000000e+00, %62
  store float %63, float* %23, align 4
  store i32 1, i32* %19, align 4
  br label %64

64:                                               ; preds = %88, %52
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load float, float* %23, align 4
  %70 = load float*, float** %13, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %70, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fsub float %69, %75
  %77 = load float, float* %22, align 4
  %78 = fmul float %77, %76
  store float %78, float* %22, align 4
  %79 = load float, float* %23, align 4
  %80 = load float*, float** %13, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fsub float %79, %84
  %86 = load float, float* %21, align 4
  %87 = fmul float %86, %85
  store float %87, float* %21, align 4
  br label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %19, align 4
  br label %64

91:                                               ; preds = %64
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load float, float* %23, align 4
  %97 = load float*, float** %13, align 8
  %98 = load i32, i32* %19, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %97, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fsub float %96, %102
  %104 = load float, float* %22, align 4
  %105 = fmul float %104, %103
  store float %105, float* %22, align 4
  %106 = load float, float* %21, align 4
  %107 = load float, float* %23, align 4
  %108 = load float, float* %23, align 4
  %109 = fmul float %107, %108
  %110 = fsub float 4.000000e+00, %109
  %111 = fmul float %106, %110
  %112 = load float, float* %21, align 4
  %113 = fmul float %112, %111
  store float %113, float* %21, align 4
  %114 = load float, float* %22, align 4
  %115 = load float, float* %22, align 4
  %116 = fmul float %115, %114
  store float %116, float* %22, align 4
  br label %130

117:                                              ; preds = %91
  %118 = load float, float* %21, align 4
  %119 = load float, float* %23, align 4
  %120 = fsub float 2.000000e+00, %119
  %121 = fmul float %118, %120
  %122 = load float, float* %21, align 4
  %123 = fmul float %122, %121
  store float %123, float* %21, align 4
  %124 = load float, float* %22, align 4
  %125 = load float, float* %23, align 4
  %126 = fadd float 2.000000e+00, %125
  %127 = fmul float %124, %126
  %128 = load float, float* %22, align 4
  %129 = fmul float %128, %127
  store float %129, float* %22, align 4
  br label %130

130:                                              ; preds = %117, %95
  %131 = load float, float* %15, align 4
  %132 = load float, float* %21, align 4
  %133 = load float, float* %22, align 4
  %134 = fadd float %132, %133
  %135 = call float @sqrt(float %134)
  %136 = fdiv float %131, %135
  %137 = load float, float* %16, align 4
  %138 = fsub float %136, %137
  %139 = call float @fromdB(float %138)
  store float %139, float* %22, align 4
  %140 = load float, float* %22, align 4
  %141 = load float*, float** %9, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = fmul float %145, %140
  store float %146, float* %144, align 4
  br label %147

147:                                              ; preds = %156, %130
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %147
  %157 = load float, float* %22, align 4
  %158 = load float*, float** %9, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  %162 = load float, float* %161, align 4
  %163 = fmul float %162, %157
  store float %163, float* %161, align 4
  br label %147

164:                                              ; preds = %147
  br label %48

165:                                              ; preds = %48
  ret void
}

declare dso_local float @cos(float) #1

declare dso_local float @fromdB(float) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
