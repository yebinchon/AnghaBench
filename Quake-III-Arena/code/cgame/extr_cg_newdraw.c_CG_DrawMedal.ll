; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawMedal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawMedal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float, float, float, float, float, float, float, float }
%struct.TYPE_6__ = type { float, i64, i64, i64 }

@cg = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%i%%\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Wow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawMedal(i32 %0, %struct.TYPE_6__* %1, float %2, double* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca float, align 4
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store float %2, float* %8, align 4
  store double* %3, double** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg, i32 0, i32 1), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %15
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %11, align 8
  store float 0.000000e+00, float* %12, align 4
  store i8* null, i8** %13, align 8
  %17 = load double*, double** %9, align 8
  %18 = getelementptr inbounds double, double* %17, i64 3
  store double 2.500000e-01, double* %18, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %52 [
    i32 135, label %20
    i32 134, label %24
    i32 132, label %28
    i32 131, label %32
    i32 129, label %36
    i32 128, label %40
    i32 130, label %44
    i32 133, label %48
  ]

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  store float %23, float* %12, align 4
  br label %52

24:                                               ; preds = %5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  store float %27, float* %12, align 4
  br label %52

28:                                               ; preds = %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load float, float* %30, align 4
  store float %31, float* %12, align 4
  br label %52

32:                                               ; preds = %5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load float, float* %34, align 4
  store float %35, float* %12, align 4
  br label %52

36:                                               ; preds = %5
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load float, float* %38, align 4
  store float %39, float* %12, align 4
  br label %52

40:                                               ; preds = %5
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 5
  %43 = load float, float* %42, align 4
  store float %43, float* %12, align 4
  br label %52

44:                                               ; preds = %5
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 6
  %47 = load float, float* %46, align 4
  store float %47, float* %12, align 4
  br label %52

48:                                               ; preds = %5
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 7
  %51 = load float, float* %50, align 4
  store float %51, float* %12, align 4
  br label %52

52:                                               ; preds = %5, %48, %44, %40, %36, %32, %28, %24, %20
  %53 = load float, float* %12, align 4
  %54 = fcmp ogt float %53, 0.000000e+00
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 128
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 135
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load float, float* %12, align 4
  %63 = fptosi float %62 to i32
  %64 = call i8* @va(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i8* %64, i8** %13, align 8
  %65 = load float, float* %12, align 4
  %66 = fcmp ogt float %65, 5.000000e+01
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load double*, double** %9, align 8
  %69 = getelementptr inbounds double, double* %68, i64 3
  store double 1.000000e+00, double* %69, align 8
  br label %70

70:                                               ; preds = %67, %61
  br label %77

71:                                               ; preds = %58
  %72 = load float, float* %12, align 4
  %73 = fptosi float %72 to i32
  %74 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  store i8* %74, i8** %13, align 8
  %75 = load double*, double** %9, align 8
  %76 = getelementptr inbounds double, double* %75, i64 3
  store double 1.000000e+00, double* %76, align 8
  br label %77

77:                                               ; preds = %71, %70
  br label %85

78:                                               ; preds = %55
  %79 = load float, float* %12, align 4
  %80 = fcmp une float %79, 0.000000e+00
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load double*, double** %9, align 8
  %83 = getelementptr inbounds double, double* %82, i64 3
  store double 1.000000e+00, double* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %85

85:                                               ; preds = %84, %77
  br label %86

86:                                               ; preds = %85, %52
  %87 = load double*, double** %9, align 8
  %88 = call i32 @trap_R_SetColor(double* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load float, float* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @CG_DrawPic(i64 %91, i64 %94, float %97, i64 %100, i32 %101)
  %103 = load i8*, i8** %13, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %135

105:                                              ; preds = %86
  %106 = load double*, double** %9, align 8
  %107 = getelementptr inbounds double, double* %106, i64 3
  store double 1.000000e+00, double* %107, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load float, float* %8, align 4
  %110 = call float @CG_Text_Width(i8* %108, float %109, i32 0)
  store float %110, float* %12, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to float
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 8
  %118 = load float, float* %12, align 4
  %119 = fsub float %117, %118
  %120 = fdiv float %119, 2.000000e+00
  %121 = fadd float %114, %120
  %122 = fptosi float %121 to i64
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = add nsw i64 %129, 10
  %131 = load float, float* %8, align 4
  %132 = load double*, double** %9, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @CG_Text_Paint(i64 %122, i64 %130, float %131, double* %132, i8* %133, i32 0, i32 0, i32 0)
  br label %135

135:                                              ; preds = %105, %86
  %136 = call i32 @trap_R_SetColor(double* null)
  ret void
}

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @trap_R_SetColor(double*) #1

declare dso_local i32 @CG_DrawPic(i64, i64, float, i64, i32) #1

declare dso_local float @CG_Text_Width(i8*, float, i32) #1

declare dso_local i32 @CG_Text_Paint(i64, i64, float, double*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
