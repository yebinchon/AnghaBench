; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawHead.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@cgs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cg_draw3dIcons = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cg_drawIcons = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawHead(float %0, float %1, float %2, float %3, i32 %4, double* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca float, align 4
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store double* %5, double** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 1), align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %14, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_draw3dIcons, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %90

25:                                               ; preds = %6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %115

32:                                               ; preds = %25
  %33 = load i32, i32* %13, align 4
  %34 = load double*, double** %17, align 8
  %35 = load double*, double** %18, align 8
  %36 = call i32 @trap_R_ModelBounds(i32 %33, double* %34, double* %35)
  %37 = load double*, double** %17, align 8
  %38 = getelementptr inbounds double, double* %37, i64 2
  %39 = load double, double* %38, align 8
  %40 = load double*, double** %18, align 8
  %41 = getelementptr inbounds double, double* %40, i64 2
  %42 = load double, double* %41, align 8
  %43 = fadd double %39, %42
  %44 = fmul double -5.000000e-01, %43
  %45 = load double*, double** %16, align 8
  %46 = getelementptr inbounds double, double* %45, i64 2
  store double %44, double* %46, align 8
  %47 = load double*, double** %17, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %18, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  %52 = load double, double* %51, align 8
  %53 = fadd double %49, %52
  %54 = fmul double 5.000000e-01, %53
  %55 = load double*, double** %16, align 8
  %56 = getelementptr inbounds double, double* %55, i64 1
  store double %54, double* %56, align 8
  %57 = load double*, double** %18, align 8
  %58 = getelementptr inbounds double, double* %57, i64 2
  %59 = load double, double* %58, align 8
  %60 = load double*, double** %17, align 8
  %61 = getelementptr inbounds double, double* %60, i64 2
  %62 = load double, double* %61, align 8
  %63 = fsub double %59, %62
  %64 = fmul double 0x3FE6666666666666, %63
  %65 = fptrunc double %64 to float
  store float %65, float* %15, align 4
  %66 = load float, float* %15, align 4
  %67 = fpext float %66 to double
  %68 = fdiv double %67, 2.680000e-01
  %69 = load double*, double** %16, align 8
  %70 = getelementptr inbounds double, double* %69, i64 0
  store double %68, double* %70, align 8
  %71 = load double*, double** %16, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load double*, double** %16, align 8
  %76 = call i32 @VectorAdd(double* %71, i32 %74, double* %75)
  %77 = load float, float* %7, align 4
  %78 = load float, float* %8, align 4
  %79 = load float, float* %9, align 4
  %80 = load float, float* %10, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load double*, double** %16, align 8
  %88 = load double*, double** %12, align 8
  %89 = call i32 @CG_Draw3DModel(float %77, float %78, float %79, float %80, i32 %83, i32 %86, double* %87, double* %88)
  br label %103

90:                                               ; preds = %6
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_drawIcons, i32 0, i32 0), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load float, float* %7, align 4
  %95 = load float, float* %8, align 4
  %96 = load float, float* %9, align 4
  %97 = load float, float* %10, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @CG_DrawPic(float %94, float %95, float %96, float %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %90
  br label %103

103:                                              ; preds = %102, %32
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load float, float* %7, align 4
  %110 = load float, float* %8, align 4
  %111 = load float, float* %9, align 4
  %112 = load float, float* %10, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 0), align 8
  %114 = call i32 @CG_DrawPic(float %109, float %110, float %111, float %112, i32 %113)
  br label %115

115:                                              ; preds = %31, %108, %103
  ret void
}

declare dso_local i32 @trap_R_ModelBounds(i32, double*, double*) #1

declare dso_local i32 @VectorAdd(double*, i32, double*) #1

declare dso_local i32 @CG_Draw3DModel(float, float, float, float, i32, i32, double*, double*) #1

declare dso_local i32 @CG_DrawPic(float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
