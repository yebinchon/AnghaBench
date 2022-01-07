; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_test_dintersect.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_test_dintersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, double, i32, i32 }
%struct.TYPE_8__ = type { float, float, float, float }

@__const.test_dintersect.a = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_dintersect.dxa = private unnamed_addr constant %struct.TYPE_9__ { double 1.000000e-04, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_dintersect.dya = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 1.000000e-04, i32 1, i32 1 }, align 8
@__const.test_dintersect.dwa = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_dintersect.dha = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_dintersect.b = private unnamed_addr constant %struct.TYPE_9__ { double 5.000000e-01, double 5.000000e-01, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [20 x i8] c"Inter: %f %f %f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Inter Manual %f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_dintersect() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_dintersect.a to i8*), i64 24, i1 false)
  %14 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_dintersect.dxa to i8*), i64 24, i1 false)
  %15 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_dintersect.dya to i8*), i64 24, i1 false)
  %16 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_dintersect.dwa to i8*), i64 24, i1 false)
  %17 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_dintersect.dha to i8*), i64 24, i1 false)
  %18 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_dintersect.b to i8*), i64 24, i1 false)
  %19 = call { <2 x float>, <2 x float> } @dintersect(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  %20 = bitcast %struct.TYPE_8__* %7 to { <2 x float>, <2 x float> }*
  %21 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %20, i32 0, i32 0
  %22 = extractvalue { <2 x float>, <2 x float> } %19, 0
  store <2 x float> %22, <2 x float>* %21, align 4
  %23 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %20, i32 0, i32 1
  %24 = extractvalue { <2 x float>, <2 x float> } %19, 1
  store <2 x float> %24, <2 x float>* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %32 = load float, float* %31, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), float %26, float %28, float %30, float %32)
  %34 = call float @box_intersection(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %34, float* %8, align 4
  %35 = call float @box_intersection(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %35, float* %9, align 4
  %36 = call float @box_intersection(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %36, float* %10, align 4
  %37 = call float @box_intersection(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %4, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %37, float* %11, align 4
  %38 = call float @box_intersection(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %38, float* %12, align 4
  %39 = load float, float* %9, align 4
  %40 = load float, float* %8, align 4
  %41 = fsub float %39, %40
  %42 = fpext float %41 to double
  %43 = fdiv double %42, 1.000000e-04
  %44 = fptrunc double %43 to float
  store float %44, float* %9, align 4
  %45 = load float, float* %10, align 4
  %46 = load float, float* %8, align 4
  %47 = fsub float %45, %46
  %48 = fpext float %47 to double
  %49 = fdiv double %48, 1.000000e-04
  %50 = fptrunc double %49 to float
  store float %50, float* %10, align 4
  %51 = load float, float* %11, align 4
  %52 = load float, float* %8, align 4
  %53 = fsub float %51, %52
  %54 = fpext float %53 to double
  %55 = fdiv double %54, 1.000000e-04
  %56 = fptrunc double %55 to float
  store float %56, float* %11, align 4
  %57 = load float, float* %12, align 4
  %58 = load float, float* %8, align 4
  %59 = fsub float %57, %58
  %60 = fpext float %59 to double
  %61 = fdiv double %60, 1.000000e-04
  %62 = fptrunc double %61 to float
  store float %62, float* %12, align 4
  %63 = load float, float* %9, align 4
  %64 = load float, float* %10, align 4
  %65 = load float, float* %11, align 4
  %66 = load float, float* %12, align 4
  %67 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), float %63, float %64, float %65, float %66)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { <2 x float>, <2 x float> } @dintersect(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

declare dso_local i32 @printf(i8*, float, float, float, float) #2

declare dso_local float @box_intersection(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
