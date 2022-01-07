; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_be_aas_bspc.c_BotImport_BSPModelMinsMaxsOrigin.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_be_aas_bspc.c_BotImport_BSPModelMinsMaxsOrigin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotImport_BSPModelMinsMaxsOrigin(i32 %0, double* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @CM_InlineModel(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load double*, double** %12, align 8
  %20 = load double*, double** %13, align 8
  %21 = call i32 @CM_ModelBounds(i32 %18, double* %19, double* %20)
  %22 = load double*, double** %7, align 8
  %23 = getelementptr inbounds double, double* %22, i64 0
  %24 = load double, double* %23, align 8
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %36, label %26

26:                                               ; preds = %5
  %27 = load double*, double** %7, align 8
  %28 = getelementptr inbounds double, double* %27, i64 1
  %29 = load double, double* %28, align 8
  %30 = fcmp une double %29, 0.000000e+00
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load double*, double** %7, align 8
  %33 = getelementptr inbounds double, double* %32, i64 2
  %34 = load double, double* %33, align 8
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %36, label %86

36:                                               ; preds = %31, %26, %5
  %37 = load double*, double** %12, align 8
  %38 = load double*, double** %13, align 8
  %39 = call float @RadiusFromBounds(double* %37, double* %38)
  store float %39, float* %14, align 4
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %82, %36
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %85

43:                                               ; preds = %40
  %44 = load double*, double** %12, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %13, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fadd double %48, %53
  %55 = fmul double %54, 5.000000e-01
  %56 = load float, float* %14, align 4
  %57 = fpext float %56 to double
  %58 = fsub double %55, %57
  %59 = load double*, double** %12, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double %58, double* %62, align 8
  %63 = load double*, double** %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  %68 = load double*, double** %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fadd double %67, %72
  %74 = fmul double %73, 5.000000e-01
  %75 = load float, float* %14, align 4
  %76 = fpext float %75 to double
  %77 = fadd double %74, %76
  %78 = load double*, double** %13, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  store double %77, double* %81, align 8
  br label %82

82:                                               ; preds = %43
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %40

85:                                               ; preds = %40
  br label %86

86:                                               ; preds = %85, %31
  %87 = load double*, double** %8, align 8
  %88 = icmp ne double* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load double*, double** %12, align 8
  %91 = load double*, double** %8, align 8
  %92 = call i32 @VectorCopy(double* %90, double* %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load double*, double** %9, align 8
  %95 = icmp ne double* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load double*, double** %13, align 8
  %98 = load double*, double** %9, align 8
  %99 = call i32 @VectorCopy(double* %97, double* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load double*, double** %10, align 8
  %102 = icmp ne double* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load double*, double** %10, align 8
  %105 = call i32 @VectorClear(double* %104)
  br label %106

106:                                              ; preds = %103, %100
  ret void
}

declare dso_local i32 @CM_InlineModel(i32) #1

declare dso_local i32 @CM_ModelBounds(i32, double*, double*) #1

declare dso_local float @RadiusFromBounds(double*, double*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local i32 @VectorClear(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
