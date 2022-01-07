; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmadec.c_wma_lsp_to_curve.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmadec.c_wma_lsp_to_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float* }

@NB_LSP_COEFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float*, float*, i32, float*)* @wma_lsp_to_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wma_lsp_to_curve(%struct.TYPE_4__* %0, float* %1, float* %2, i32 %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  store float 0.000000e+00, float* %17, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %87, %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %18
  store float 5.000000e-01, float* %13, align 4
  store float 5.000000e-01, float* %14, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  store float %29, float* %15, align 4
  store i32 1, i32* %12, align 4
  br label %30

30:                                               ; preds = %54, %22
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @NB_LSP_COEFS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load float, float* %15, align 4
  %36 = load float*, float** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %36, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fsub float %35, %41
  %43 = load float, float* %14, align 4
  %44 = fmul float %43, %42
  store float %44, float* %14, align 4
  %45 = load float, float* %15, align 4
  %46 = load float*, float** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fsub float %45, %50
  %52 = load float, float* %13, align 4
  %53 = fmul float %52, %51
  store float %53, float* %13, align 4
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %12, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load float, float* %13, align 4
  %59 = load float, float* %15, align 4
  %60 = fsub float 2.000000e+00, %59
  %61 = fmul float %58, %60
  %62 = load float, float* %13, align 4
  %63 = fmul float %62, %61
  store float %63, float* %13, align 4
  %64 = load float, float* %14, align 4
  %65 = load float, float* %15, align 4
  %66 = fadd float 2.000000e+00, %65
  %67 = fmul float %64, %66
  %68 = load float, float* %14, align 4
  %69 = fmul float %68, %67
  store float %69, float* %14, align 4
  %70 = load float, float* %13, align 4
  %71 = load float, float* %14, align 4
  %72 = fadd float %70, %71
  store float %72, float* %16, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = load float, float* %16, align 4
  %75 = call float @pow_m1_4(%struct.TYPE_4__* %73, float %74)
  store float %75, float* %16, align 4
  %76 = load float, float* %16, align 4
  %77 = load float, float* %17, align 4
  %78 = fcmp ogt float %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = load float, float* %16, align 4
  store float %80, float* %17, align 4
  br label %81

81:                                               ; preds = %79, %57
  %82 = load float, float* %16, align 4
  %83 = load float*, float** %7, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  store float %82, float* %86, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %18

90:                                               ; preds = %18
  %91 = load float, float* %17, align 4
  %92 = load float*, float** %8, align 8
  store float %91, float* %92, align 4
  ret void
}

declare dso_local float @pow_m1_4(%struct.TYPE_4__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
