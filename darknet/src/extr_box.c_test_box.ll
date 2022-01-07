; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_test_box.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_test_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, double, i32, i32 }
%struct.TYPE_8__ = type { float, float, float, float }

@__const.test_box.a = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_box.dxa = private unnamed_addr constant %struct.TYPE_9__ { double 1.000000e-05, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_box.dya = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 1.000000e-05, i32 1, i32 1 }, align 8
@__const.test_box.dwa = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_box.dha = private unnamed_addr constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, i32 1, i32 1 }, align 8
@__const.test_box.b = private unnamed_addr constant %struct.TYPE_9__ { double 5.000000e-01, double 0.000000e+00, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"manual %f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_box() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = call i32 (...) @test_dintersect()
  %14 = call i32 (...) @test_dunion()
  %15 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_box.a to i8*), i64 24, i1 false)
  %16 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_box.dxa to i8*), i64 24, i1 false)
  %17 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_box.dya to i8*), i64 24, i1 false)
  %18 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_box.dwa to i8*), i64 24, i1 false)
  %19 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_box.dha to i8*), i64 24, i1 false)
  %20 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_9__* @__const.test_box.b to i8*), i64 24, i1 false)
  %21 = call float @box_iou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %21, float* %7, align 4
  %22 = load float, float* %7, align 4
  %23 = fsub float 1.000000e+00, %22
  %24 = load float, float* %7, align 4
  %25 = fsub float 1.000000e+00, %24
  %26 = fmul float %23, %25
  store float %26, float* %7, align 4
  %27 = load float, float* %7, align 4
  %28 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), float %27)
  %29 = call { <2 x float>, <2 x float> } @diou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  %30 = bitcast %struct.TYPE_8__* %8 to { <2 x float>, <2 x float> }*
  %31 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %30, i32 0, i32 0
  %32 = extractvalue { <2 x float>, <2 x float> } %29, 0
  store <2 x float> %32, <2 x float>* %31, align 4
  %33 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %30, i32 0, i32 1
  %34 = extractvalue { <2 x float>, <2 x float> } %29, 1
  store <2 x float> %34, <2 x float>* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %41 = load float, float* %40, align 4
  %42 = fpext float %41 to double
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %44 = load float, float* %43, align 4
  %45 = fpext float %44 to double
  %46 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), float %36, double %39, double %42, double %45)
  %47 = call float @box_iou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %47, float* %9, align 4
  %48 = call float @box_iou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %48, float* %10, align 4
  %49 = call float @box_iou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %4, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %49, float* %11, align 4
  %50 = call float @box_iou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store float %50, float* %12, align 4
  %51 = load float, float* %9, align 4
  %52 = fsub float 1.000000e+00, %51
  %53 = load float, float* %9, align 4
  %54 = fsub float 1.000000e+00, %53
  %55 = fmul float %52, %54
  %56 = load float, float* %7, align 4
  %57 = fsub float %55, %56
  %58 = fpext float %57 to double
  %59 = fdiv double %58, 1.000000e-05
  %60 = fptrunc double %59 to float
  store float %60, float* %9, align 4
  %61 = load float, float* %10, align 4
  %62 = fsub float 1.000000e+00, %61
  %63 = load float, float* %10, align 4
  %64 = fsub float 1.000000e+00, %63
  %65 = fmul float %62, %64
  %66 = load float, float* %7, align 4
  %67 = fsub float %65, %66
  %68 = fpext float %67 to double
  %69 = fdiv double %68, 1.000000e-05
  %70 = fptrunc double %69 to float
  store float %70, float* %10, align 4
  %71 = load float, float* %11, align 4
  %72 = fsub float 1.000000e+00, %71
  %73 = load float, float* %11, align 4
  %74 = fsub float 1.000000e+00, %73
  %75 = fmul float %72, %74
  %76 = load float, float* %7, align 4
  %77 = fsub float %75, %76
  %78 = fpext float %77 to double
  %79 = fdiv double %78, 1.000000e-05
  %80 = fptrunc double %79 to float
  store float %80, float* %11, align 4
  %81 = load float, float* %12, align 4
  %82 = fsub float 1.000000e+00, %81
  %83 = load float, float* %12, align 4
  %84 = fsub float 1.000000e+00, %83
  %85 = fmul float %82, %84
  %86 = load float, float* %7, align 4
  %87 = fsub float %85, %86
  %88 = fpext float %87 to double
  %89 = fdiv double %88, 1.000000e-05
  %90 = fptrunc double %89 to float
  store float %90, float* %12, align 4
  %91 = load float, float* %9, align 4
  %92 = load float, float* %10, align 4
  %93 = fpext float %92 to double
  %94 = load float, float* %11, align 4
  %95 = fpext float %94 to double
  %96 = load float, float* %12, align 4
  %97 = fpext float %96 to double
  %98 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), float %91, double %93, double %95, double %97)
  ret void
}

declare dso_local i32 @test_dintersect(...) #1

declare dso_local i32 @test_dunion(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @box_iou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i32 @printf(i8*, float, ...) #1

declare dso_local { <2 x float>, <2 x float> } @diou(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
