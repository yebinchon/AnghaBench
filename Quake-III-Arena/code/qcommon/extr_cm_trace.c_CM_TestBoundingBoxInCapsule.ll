; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TestBoundingBoxInCapsule.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TestBoundingBoxInCapsule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double*, double*, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double, double, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TestBoundingBoxInCapsule(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca [2 x double*], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load double*, double** %5, align 8
  %14 = load double*, double** %6, align 8
  %15 = call i32 @CM_ModelBounds(i32 %12, double* %13, double* %14)
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %94, %2
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %97

19:                                               ; preds = %16
  %20 = load double*, double** %5, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %20, i64 %22
  %24 = load double, double* %23, align 8
  %25 = load double*, double** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = fadd double %24, %29
  %31 = fmul double %30, 5.000000e-01
  %32 = load double*, double** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  store double %31, double* %35, align 8
  %36 = load double*, double** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fsub double %40, %45
  %47 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 0
  %48 = load double*, double** %47, align 16
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %46, double* %51, align 8
  %52 = load double*, double** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = fsub double %56, %61
  %63 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 1
  %64 = load double*, double** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  store double %62, double* %67, align 8
  %68 = load double*, double** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load double*, double** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fsub double %79, %72
  store double %80, double* %78, align 8
  %81 = load double*, double** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load double*, double** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %88, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fsub double %92, %85
  store double %93, double* %91, align 8
  br label %94

94:                                               ; preds = %19
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %16

97:                                               ; preds = %16
  %98 = load i32, i32* @qtrue, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  %102 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 1
  %103 = load double*, double** %102, align 8
  %104 = getelementptr inbounds double, double* %103, i64 0
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 1
  %107 = load double*, double** %106, align 8
  %108 = getelementptr inbounds double, double* %107, i64 2
  %109 = load double, double* %108, align 8
  %110 = fcmp ogt double %105, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 1
  %113 = load double*, double** %112, align 8
  %114 = getelementptr inbounds double, double* %113, i64 2
  %115 = load double, double* %114, align 8
  br label %121

116:                                              ; preds = %97
  %117 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 1
  %118 = load double*, double** %117, align 8
  %119 = getelementptr inbounds double, double* %118, i64 0
  %120 = load double, double* %119, align 8
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi double [ %115, %111 ], [ %120, %116 ]
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store double %122, double* %125, align 8
  %126 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 1
  %127 = load double*, double** %126, align 8
  %128 = getelementptr inbounds double, double* %127, i64 2
  %129 = load double, double* %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store double %129, double* %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds [2 x double*], [2 x double*]* %8, i64 0, i64 1
  %138 = load double*, double** %137, align 8
  %139 = getelementptr inbounds double, double* %138, i64 2
  %140 = load double, double* %139, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load double, double* %143, align 8
  %145 = fsub double %140, %144
  %146 = call i32 @VectorSet(i32 %136, i32 0, i32 0, double %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @qfalse, align 4
  %158 = call i32 @CM_TempBoxModel(i32 %151, i32 %156, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call %struct.TYPE_9__* @CM_ClipHandleToModel(i32 %159)
  store %struct.TYPE_9__* %160, %struct.TYPE_9__** %10, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = call i32 @CM_TestInLeaf(%struct.TYPE_8__* %161, i32* %163)
  ret void
}

declare dso_local i32 @CM_ModelBounds(i32, double*, double*) #1

declare dso_local i32 @VectorSet(i32, i32, i32, double) #1

declare dso_local i32 @CM_TempBoxModel(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @CM_ClipHandleToModel(i32) #1

declare dso_local i32 @CM_TestInLeaf(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
