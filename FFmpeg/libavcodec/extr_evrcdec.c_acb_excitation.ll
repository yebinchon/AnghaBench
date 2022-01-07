; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_acb_excitation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_acb_excitation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float, float*, i32)* @acb_excitation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acb_excitation(i32* %0, float* %1, float %2, float* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store float* %1, float** %7, align 8
  store float %2, float* %8, align 4
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sitofp i32 %16 to float
  %18 = fpext float %17 to double
  %19 = fdiv double 1.000000e+00, %18
  %20 = fptrunc double %19 to float
  store float %20, float* %14, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sitofp i32 %21 to float
  store float %22, float* %13, align 4
  %23 = load float*, float** %9, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %9, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = fsub float %25, %28
  %30 = load float, float* %14, align 4
  %31 = fmul float %29, %30
  store float %31, float* %11, align 4
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %53, %5
  %33 = load i32, i32* %15, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float, float* %13, align 4
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load float*, float** %9, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sitofp i32 %41 to float
  %43 = load float, float* %11, align 4
  %44 = fmul float %42, %43
  %45 = fadd float %40, %44
  store float %45, float* %12, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load float*, float** %7, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %12, align 4
  %52 = call i32 @bl_intrp(i32* %46, float* %50, float %51)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load float*, float** %9, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  %60 = load float*, float** %9, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fsub float %59, %62
  %64 = load float, float* %14, align 4
  %65 = fmul float %63, %64
  store float %65, float* %11, align 4
  %66 = load float, float* %13, align 4
  %67 = fptosi float %66 to i32
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %92, %56
  %69 = load i32, i32* %15, align 4
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %13, align 4
  %72 = fadd float %71, 1.000000e+01
  %73 = fcmp olt float %70, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load float*, float** %9, align 8
  %76 = getelementptr inbounds float, float* %75, i64 1
  %77 = load float, float* %76, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sitofp i32 %78 to float
  %80 = load float, float* %13, align 4
  %81 = fsub float %79, %80
  %82 = load float, float* %11, align 4
  %83 = fmul float %81, %82
  %84 = fadd float %77, %83
  store float %84, float* %12, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load float*, float** %7, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %12, align 4
  %91 = call i32 @bl_intrp(i32* %85, float* %89, float %90)
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %68

95:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %108, %95
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load float, float* %8, align 4
  %102 = load float*, float** %7, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fmul float %106, %101
  store float %107, float* %105, align 4
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %96

111:                                              ; preds = %96
  ret void
}

declare dso_local i32 @bl_intrp(i32*, float*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
