; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitFogAdjTable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitFogAdjTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitFogAdjTable(%struct.TYPE_3__* %0, i64 %1, [4 x float]* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4 x float]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store [4 x float]* %2, [4 x float]** %6, align 8
  %15 = load [4 x float]*, [4 x float]** %6, align 8
  %16 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 3
  %17 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 3
  %18 = load float, float* %17, align 4
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load [4 x float]*, [4 x float]** %6, align 8
  %22 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 2
  %23 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 3
  %24 = load float, float* %23, align 4
  %25 = load [4 x float]*, [4 x float]** %6, align 8
  %26 = getelementptr inbounds [4 x float], [4 x float]* %25, i64 2
  %27 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 2
  %28 = load float, float* %27, align 4
  %29 = fsub float %28, 1.000000e+00
  %30 = fdiv float %24, %29
  store float %30, float* %9, align 4
  %31 = load float, float* %9, align 4
  %32 = load [4 x float]*, [4 x float]** %6, align 8
  %33 = getelementptr inbounds [4 x float], [4 x float]* %32, i64 0
  %34 = getelementptr inbounds [4 x float], [4 x float]* %33, i64 0, i64 0
  %35 = load float, float* %34, align 4
  %36 = fdiv float %31, %35
  store float %36, float* %10, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load [4 x float]*, [4 x float]** %6, align 8
  %39 = getelementptr inbounds [4 x float], [4 x float]* %38, i64 0
  %40 = getelementptr inbounds [4 x float], [4 x float]* %39, i64 0, i64 0
  %41 = load float, float* %40, align 4
  %42 = fdiv float 1.000000e+00, %41
  store float %42, float* %10, align 4
  %43 = load float, float* %10, align 4
  %44 = fmul float %43, 0x3FFBB67A00000000
  store float %44, float* %9, align 4
  br label %45

45:                                               ; preds = %37, %20
  %46 = load float, float* %9, align 4
  %47 = load float, float* %9, align 4
  %48 = fmul float %46, %47
  store float %48, float* %11, align 4
  %49 = load i64, i64* %5, align 8
  %50 = sitofp i64 %49 to float
  %51 = fdiv float 2.000000e+00, %50
  store float %51, float* %12, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %86, %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %89

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = sitofp i32 %57 to float
  %59 = fmul float %58, 3.200000e+01
  store float %59, float* %13, align 4
  %60 = load float, float* %12, align 4
  %61 = load float, float* %13, align 4
  %62 = fmul float %61, %60
  store float %62, float* %13, align 4
  %63 = load float, float* %10, align 4
  %64 = load float, float* %13, align 4
  %65 = fmul float %64, %63
  store float %65, float* %13, align 4
  %66 = load float, float* %13, align 4
  %67 = load float, float* %13, align 4
  %68 = fmul float %67, %66
  store float %68, float* %13, align 4
  %69 = load float, float* %11, align 4
  %70 = load float, float* %13, align 4
  %71 = fdiv float %70, %69
  store float %71, float* %13, align 4
  %72 = load float, float* %13, align 4
  %73 = fadd float %72, 1.000000e+00
  %74 = call float @sqrtf(float %73) #2
  store float %74, float* %14, align 4
  %75 = load float, float* %14, align 4
  %76 = fmul float %75, 2.560000e+02
  %77 = fptosi float %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 4095
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %55
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %52

89:                                               ; preds = %52
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
