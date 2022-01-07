; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateFogImage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateFogImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* (i32)*, i32 (i32*)* }
%struct.TYPE_3__ = type { i32 }

@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FOG_S = common dso_local global i32 0, align 4
@FOG_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"*fog\00", align 1
@qfalse = common dso_local global i32 0, align 4
@GL_CLAMP = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_BORDER_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @R_CreateFogImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_CreateFogImage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [4 x float], align 16
  %7 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %8 = load i32, i32* @FOG_S, align 4
  %9 = load i32, i32* @FOG_T, align 4
  %10 = mul nsw i32 %8, %9
  %11 = mul nsw i32 %10, 4
  %12 = call i32* %7(i32 %11)
  store i32* %12, i32** %3, align 8
  store float 2.000000e+00, float* %4, align 4
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %85, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @FOG_S, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %88

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %81, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @FOG_T, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = sitofp i32 %23 to float
  %25 = fadd float %24, 5.000000e-01
  %26 = load i32, i32* @FOG_S, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %25, %27
  %29 = fptosi float %28 to i32
  %30 = load i32, i32* %2, align 4
  %31 = sitofp i32 %30 to float
  %32 = fadd float %31, 5.000000e-01
  %33 = load i32, i32* @FOG_T, align 4
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %32, %34
  %36 = fptosi float %35 to i32
  %37 = call float @R_FogFactor(i32 %29, i32 %36)
  store float %37, float* %5, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @FOG_S, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %41, %42
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %38, i64 %46
  store i32 255, i32* %47, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @FOG_S, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %51, %52
  %54 = mul nsw i32 %53, 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %48, i64 %56
  store i32 255, i32* %57, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @FOG_S, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 %63, 4
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  store i32 255, i32* %67, align 4
  %68 = load float, float* %5, align 4
  %69 = fmul float 2.550000e+02, %68
  %70 = fptosi float %69 to i32
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @FOG_S, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %74, %75
  %77 = mul nsw i32 %76, 4
  %78 = add nsw i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %71, i64 %79
  store i32 %70, i32* %80, align 4
  br label %81

81:                                               ; preds = %22
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %18

84:                                               ; preds = %18
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %13

88:                                               ; preds = %13
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @FOG_S, align 4
  %91 = load i32, i32* @FOG_T, align 4
  %92 = load i32, i32* @qfalse, align 4
  %93 = load i32, i32* @qfalse, align 4
  %94 = load i32, i32* @GL_CLAMP, align 4
  %95 = call i32 @R_CreateImage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 4
  %96 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 1), align 8
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 %96(i32* %97)
  %99 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  store float 1.000000e+00, float* %99, align 16
  %100 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 1
  store float 1.000000e+00, float* %100, align 4
  %101 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 2
  store float 1.000000e+00, float* %101, align 8
  %102 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 3
  store float 1.000000e+00, float* %102, align 4
  %103 = load i32, i32* @GL_TEXTURE_2D, align 4
  %104 = load i32, i32* @GL_TEXTURE_BORDER_COLOR, align 4
  %105 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %106 = call i32 @qglTexParameterfv(i32 %103, i32 %104, float* %105)
  ret void
}

declare dso_local float @R_FogFactor(i32, i32) #1

declare dso_local i32 @R_CreateImage(i8*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qglTexParameterfv(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
