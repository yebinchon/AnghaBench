; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcModulateRGBAsByFog.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcModulateRGBAsByFog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@tess = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcModulateRGBAsByFog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca [2 x float], i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0
  %12 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  %13 = call i32 @RB_CalcFogTexCoords(float* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %60, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 %20
  %22 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0, i64 0
  %23 = load float, float* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 %25
  %27 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 1
  %28 = load float, float* %27, align 4
  %29 = call double @R_FogFactor(float %23, float %28)
  %30 = fsub double 1.000000e+00, %29
  %31 = fptrunc double %30 to float
  store float %31, float* %6, align 4
  %32 = load float, float* %6, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = uitofp i8 %35 to float
  %37 = fmul float %36, %32
  %38 = fptoui float %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = load float, float* %6, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = uitofp i8 %42 to float
  %44 = fmul float %43, %39
  %45 = fptoui float %44 to i8
  store i8 %45, i8* %41, align 1
  %46 = load float, float* %6, align 4
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = uitofp i8 %49 to float
  %51 = fmul float %50, %46
  %52 = fptoui float %51 to i8
  store i8 %52, i8* %48, align 1
  %53 = load float, float* %6, align 4
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = uitofp i8 %56 to float
  %58 = fmul float %57, %53
  %59 = fptoui float %58 to i8
  store i8 %59, i8* %55, align 1
  br label %60

60:                                               ; preds = %18
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %2, align 8
  br label %14

65:                                               ; preds = %14
  %66 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RB_CalcFogTexCoords(float*) #2

declare dso_local double @R_FogFactor(float, float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
