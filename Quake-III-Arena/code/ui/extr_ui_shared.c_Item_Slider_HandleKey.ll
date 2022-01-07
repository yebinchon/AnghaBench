; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Slider_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Slider_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { float, i32 (i8*)*, i32 (i64, i32)*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, i64, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { float, float }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { float, float }

@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_14__* null, align 8
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_MOUSE3 = common dso_local global i32 0, align 4
@SLIDER_WIDTH = common dso_local global float 0.000000e+00, align 4
@SLIDER_THUMB_WIDTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"slider handle key exit\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_Slider_HandleKey(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %149

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %149

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %29, float %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %149

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @K_MOUSE1, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @K_ENTER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @K_MOUSE2, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @K_MOUSE3, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %148

54:                                               ; preds = %50, %46, %42, %38
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %12, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %147

60:                                               ; preds = %54
  %61 = load float, float* @SLIDER_WIDTH, align 4
  store float %61, float* %10, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  %76 = add nsw i32 %75, 8
  %77 = sitofp i32 %76 to float
  store float %77, float* %8, align 4
  br label %84

78:                                               ; preds = %60
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 4
  store float %83, float* %8, align 4
  br label %84

84:                                               ; preds = %78, %66
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = bitcast %struct.TYPE_11__* %13 to i8*
  %89 = bitcast %struct.TYPE_11__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 8, i1 false)
  %90 = load float, float* %8, align 4
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store float %90, float* %91, align 4
  %92 = load i64, i64* @SLIDER_THUMB_WIDTH, align 8
  %93 = sitofp i64 %92 to float
  %94 = fdiv float %93, 2.000000e+00
  store float %94, float* %9, align 4
  %95 = load float, float* %9, align 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %97 = load float, float* %96, align 4
  %98 = fsub float %97, %95
  store float %98, float* %96, align 4
  %99 = load float, float* @SLIDER_WIDTH, align 4
  %100 = load i64, i64* @SLIDER_THUMB_WIDTH, align 8
  %101 = sitofp i64 %100 to float
  %102 = fdiv float %101, 2.000000e+00
  %103 = fadd float %99, %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store float %103, float* %104, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load float, float* %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %13, float %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %84
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load float, float* %115, align 8
  %117 = load float, float* %8, align 4
  %118 = fsub float %116, %117
  store float %118, float* %11, align 4
  %119 = load float, float* %11, align 4
  %120 = load float, float* %10, align 4
  %121 = fdiv float %119, %120
  store float %121, float* %9, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load float, float* %123, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load float, float* %126, align 4
  %128 = fsub float %124, %127
  %129 = load float, float* %9, align 4
  %130 = fmul float %129, %128
  store float %130, float* %9, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load float, float* %132, align 4
  %134 = load float, float* %9, align 4
  %135 = fadd float %134, %133
  store float %135, float* %9, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load i32 (i64, i32)*, i32 (i64, i32)** %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load float, float* %9, align 4
  %143 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %142)
  %144 = call i32 %138(i64 %141, i32 %143)
  %145 = load i32, i32* @qtrue, align 4
  store i32 %145, i32* %4, align 4
  br label %155

146:                                              ; preds = %84
  br label %147

147:                                              ; preds = %146, %54
  br label %148

148:                                              ; preds = %147, %50
  br label %149

149:                                              ; preds = %148, %26, %21, %3
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32 (i8*)*, i32 (i8*)** %151, align 8
  %153 = call i32 %152(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i32, i32* @qfalse, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %149, %113
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_11__*, float, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @va(i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
