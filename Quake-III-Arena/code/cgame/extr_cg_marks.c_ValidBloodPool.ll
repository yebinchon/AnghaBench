; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_ValidBloodPool.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_ValidBloodPool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@CONTENTS_SOLID = common dso_local global i32 0, align 4
@MAX_ENTITIES = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@EXTRUDE_DIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ValidBloodPool(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float 1.600000e+01, float* %13, align 4
  store float 1.600000e+01, float* %14, align 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VectorSet(i32 %17, i32 0, i32 0, i32 1)
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @vectoangles(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @AngleVectors(i32 %22, i32* null, i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @VectorMA(i32 %26, i32 0, i32 %27, i32 %28)
  %30 = load float, float* %13, align 4
  %31 = fneg float %30
  %32 = fdiv float %31, 2.000000e+00
  store float %32, float* %11, align 4
  br label %33

33:                                               ; preds = %89, %1
  %34 = load float, float* %11, align 4
  %35 = load float, float* %13, align 4
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load float, float* %11, align 4
  %40 = fptosi float %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @VectorMA(i32 %38, i32 %40, i32 %41, i32 %42)
  %44 = load float, float* %14, align 4
  %45 = fneg float %44
  %46 = fdiv float %45, 2.000000e+00
  store float %46, float* %12, align 4
  br label %47

47:                                               ; preds = %84, %37
  %48 = load float, float* %12, align 4
  %49 = load float, float* %14, align 4
  %50 = fcmp olt float %48, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load float, float* %12, align 4
  %54 = fptosi float %53 to i32
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @VectorMA(i32 %52, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @VectorMA(i32 %58, i32 -1, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @CONTENTS_SOLID, align 4
  %65 = call i32 @CG_Trace(%struct.TYPE_3__* %15, i32 %62, i32* null, i32* null, i32 %63, i32 -1, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAX_ENTITIES, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %2, align 4
  br label %95

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %83, label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* @qfalse, align 4
  store i32 %82, i32* %2, align 4
  br label %95

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load float, float* %14, align 4
  %86 = load float, float* %12, align 4
  %87 = fadd float %86, %85
  store float %87, float* %12, align 4
  br label %47

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88
  %90 = load float, float* %13, align 4
  %91 = load float, float* %11, align 4
  %92 = fadd float %91, %90
  store float %92, float* %11, align 4
  br label %33

93:                                               ; preds = %33
  %94 = load i32, i32* @qtrue, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %81, %71
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @vectoangles(i32, i32) #1

declare dso_local i32 @AngleVectors(i32, i32*, i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @CG_Trace(%struct.TYPE_3__*, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
