; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_world.c_SV_ClipToEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_world.c_SV_ClipToEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, float*, float*, i32 }

@vec3_origin = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_ClipToEntity(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call %struct.TYPE_13__* @SV_GentityNum(i32 %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %17, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = call i32 @Com_Memset(%struct.TYPE_12__* %23, i32 0, i32 16)
  %25 = load i32, i32* %15, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store double 1.000000e+00, double* %34, align 8
  br label %80

35:                                               ; preds = %8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %37 = call i32 @SV_ClipHandleForEntity(%struct.TYPE_13__* %36)
  store i32 %37, i32* %18, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load float*, float** %40, align 8
  store float* %41, float** %19, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load float*, float** %44, align 8
  store float* %45, float** %20, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %35
  %52 = load float*, float** @vec3_origin, align 8
  store float* %52, float** %20, align 8
  br label %53

53:                                               ; preds = %51, %35
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = inttoptr i64 %55 to float*
  %57 = load i64, i64* %13, align 8
  %58 = inttoptr i64 %57 to float*
  %59 = load i64, i64* %11, align 8
  %60 = inttoptr i64 %59 to float*
  %61 = load i64, i64* %12, align 8
  %62 = inttoptr i64 %61 to float*
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load float*, float** %19, align 8
  %66 = load float*, float** %20, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @CM_TransformedBoxTrace(%struct.TYPE_12__* %54, float* %56, float* %58, float* %60, float* %62, i32 %63, i32 %64, float* %65, float* %66, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = fcmp olt double %71, 1.000000e+00
  br i1 %72, label %73, label %80

73:                                               ; preds = %53
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %32, %73, %53
  ret void
}

declare dso_local %struct.TYPE_13__* @SV_GentityNum(i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @SV_ClipHandleForEntity(%struct.TYPE_13__*) #1

declare dso_local i32 @CM_TransformedBoxTrace(%struct.TYPE_12__*, float*, float*, float*, float*, i32, i32, float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
