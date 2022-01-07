; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_CanDamage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_CanDamage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { double, i64 }

@vec3_origin = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@MASK_SOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CanDamage(%struct.TYPE_10__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca double*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store double* %1, double** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load double*, double** %8, align 8
  %18 = call i32 @VectorAdd(i32 %12, i32 %16, double* %17)
  %19 = load double*, double** %8, align 8
  %20 = load double*, double** %8, align 8
  %21 = call i32 @VectorScale(double* %19, double 5.000000e-01, double* %20)
  %22 = load double*, double** %8, align 8
  %23 = load double*, double** %6, align 8
  %24 = call i32 @VectorCopy(double* %22, double* %23)
  %25 = load double*, double** %5, align 8
  %26 = load i32, i32* @vec3_origin, align 4
  %27 = load i32, i32* @vec3_origin, align 4
  %28 = load double*, double** %6, align 8
  %29 = load i32, i32* @ENTITYNUM_NONE, align 4
  %30 = load i32, i32* @MASK_SOLID, align 4
  %31 = call i32 @trap_Trace(%struct.TYPE_9__* %7, double* %25, i32 %26, i32 %27, double* %28, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fcmp oeq double %33, 1.000000e+00
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %2
  %44 = load i32, i32* @qtrue, align 4
  store i32 %44, i32* %3, align 4
  br label %143

45:                                               ; preds = %35
  %46 = load double*, double** %8, align 8
  %47 = load double*, double** %6, align 8
  %48 = call i32 @VectorCopy(double* %46, double* %47)
  %49 = load double*, double** %6, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  %51 = load double, double* %50, align 8
  %52 = fadd double %51, 1.500000e+01
  store double %52, double* %50, align 8
  %53 = load double*, double** %6, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load double, double* %54, align 8
  %56 = fadd double %55, 1.500000e+01
  store double %56, double* %54, align 8
  %57 = load double*, double** %5, align 8
  %58 = load i32, i32* @vec3_origin, align 4
  %59 = load i32, i32* @vec3_origin, align 4
  %60 = load double*, double** %6, align 8
  %61 = load i32, i32* @ENTITYNUM_NONE, align 4
  %62 = load i32, i32* @MASK_SOLID, align 4
  %63 = call i32 @trap_Trace(%struct.TYPE_9__* %7, double* %57, i32 %58, i32 %59, double* %60, i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fcmp oeq double %65, 1.000000e+00
  br i1 %66, label %67, label %69

67:                                               ; preds = %45
  %68 = load i32, i32* @qtrue, align 4
  store i32 %68, i32* %3, align 4
  br label %143

69:                                               ; preds = %45
  %70 = load double*, double** %8, align 8
  %71 = load double*, double** %6, align 8
  %72 = call i32 @VectorCopy(double* %70, double* %71)
  %73 = load double*, double** %6, align 8
  %74 = getelementptr inbounds double, double* %73, i64 0
  %75 = load double, double* %74, align 8
  %76 = fadd double %75, 1.500000e+01
  store double %76, double* %74, align 8
  %77 = load double*, double** %6, align 8
  %78 = getelementptr inbounds double, double* %77, i64 1
  %79 = load double, double* %78, align 8
  %80 = fsub double %79, 1.500000e+01
  store double %80, double* %78, align 8
  %81 = load double*, double** %5, align 8
  %82 = load i32, i32* @vec3_origin, align 4
  %83 = load i32, i32* @vec3_origin, align 4
  %84 = load double*, double** %6, align 8
  %85 = load i32, i32* @ENTITYNUM_NONE, align 4
  %86 = load i32, i32* @MASK_SOLID, align 4
  %87 = call i32 @trap_Trace(%struct.TYPE_9__* %7, double* %81, i32 %82, i32 %83, double* %84, i32 %85, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %89 = load double, double* %88, align 8
  %90 = fcmp oeq double %89, 1.000000e+00
  br i1 %90, label %91, label %93

91:                                               ; preds = %69
  %92 = load i32, i32* @qtrue, align 4
  store i32 %92, i32* %3, align 4
  br label %143

93:                                               ; preds = %69
  %94 = load double*, double** %8, align 8
  %95 = load double*, double** %6, align 8
  %96 = call i32 @VectorCopy(double* %94, double* %95)
  %97 = load double*, double** %6, align 8
  %98 = getelementptr inbounds double, double* %97, i64 0
  %99 = load double, double* %98, align 8
  %100 = fsub double %99, 1.500000e+01
  store double %100, double* %98, align 8
  %101 = load double*, double** %6, align 8
  %102 = getelementptr inbounds double, double* %101, i64 1
  %103 = load double, double* %102, align 8
  %104 = fadd double %103, 1.500000e+01
  store double %104, double* %102, align 8
  %105 = load double*, double** %5, align 8
  %106 = load i32, i32* @vec3_origin, align 4
  %107 = load i32, i32* @vec3_origin, align 4
  %108 = load double*, double** %6, align 8
  %109 = load i32, i32* @ENTITYNUM_NONE, align 4
  %110 = load i32, i32* @MASK_SOLID, align 4
  %111 = call i32 @trap_Trace(%struct.TYPE_9__* %7, double* %105, i32 %106, i32 %107, double* %108, i32 %109, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = fcmp oeq double %113, 1.000000e+00
  br i1 %114, label %115, label %117

115:                                              ; preds = %93
  %116 = load i32, i32* @qtrue, align 4
  store i32 %116, i32* %3, align 4
  br label %143

117:                                              ; preds = %93
  %118 = load double*, double** %8, align 8
  %119 = load double*, double** %6, align 8
  %120 = call i32 @VectorCopy(double* %118, double* %119)
  %121 = load double*, double** %6, align 8
  %122 = getelementptr inbounds double, double* %121, i64 0
  %123 = load double, double* %122, align 8
  %124 = fsub double %123, 1.500000e+01
  store double %124, double* %122, align 8
  %125 = load double*, double** %6, align 8
  %126 = getelementptr inbounds double, double* %125, i64 1
  %127 = load double, double* %126, align 8
  %128 = fsub double %127, 1.500000e+01
  store double %128, double* %126, align 8
  %129 = load double*, double** %5, align 8
  %130 = load i32, i32* @vec3_origin, align 4
  %131 = load i32, i32* @vec3_origin, align 4
  %132 = load double*, double** %6, align 8
  %133 = load i32, i32* @ENTITYNUM_NONE, align 4
  %134 = load i32, i32* @MASK_SOLID, align 4
  %135 = call i32 @trap_Trace(%struct.TYPE_9__* %7, double* %129, i32 %130, i32 %131, double* %132, i32 %133, i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %137 = load double, double* %136, align 8
  %138 = fcmp oeq double %137, 1.000000e+00
  br i1 %138, label %139, label %141

139:                                              ; preds = %117
  %140 = load i32, i32* @qtrue, align 4
  store i32 %140, i32* %3, align 4
  br label %143

141:                                              ; preds = %117
  %142 = load i32, i32* @qfalse, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %139, %115, %91, %67, %43
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @VectorAdd(i32, i32, double*) #1

declare dso_local i32 @VectorScale(double*, double, double*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_9__*, double*, i32, i32, double*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
