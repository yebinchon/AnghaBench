; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_patch.c_CM_ValidateFacet.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_patch.c_CM_ValidateFacet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@qfalse = common dso_local global i32 0, align 4
@planes = common dso_local global %struct.TYPE_5__* null, align 8
@vec3_origin = common dso_local global i32 0, align 4
@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @CM_ValidateFacet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CM_ValidateFacet(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @qfalse, align 4
  store i32 %13, i32* %2, align 4
  br label %155

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @planes, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %24 = call i32 @Vector4Copy(i32 %22, float* %23)
  %25 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %26 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %27 = load float, float* %26, align 4
  %28 = call i32* @BaseWindingForPlane(float* %25, float %27)
  store i32* %28, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %88, %14
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i1 [ false, %29 ], [ %37, %35 ]
  br i1 %39, label %40, label %91

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @qfalse, align 4
  store i32 %50, i32* %2, align 4
  br label %155

51:                                               ; preds = %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @planes, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %65 = call i32 @Vector4Copy(i32 %63, float* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %51
  %75 = load i32, i32* @vec3_origin, align 4
  %76 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %77 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %78 = call i32 @VectorSubtract(i32 %75, float* %76, float* %77)
  %79 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %80 = load float, float* %79, align 4
  %81 = fneg float %80
  %82 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  store float %81, float* %82, align 4
  br label %83

83:                                               ; preds = %74, %51
  %84 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %85 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %86 = load float, float* %85, align 4
  %87 = call i32 @ChopWindingInPlace(i32** %6, float* %84, float %86, float 0x3FB99999A0000000)
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %29

91:                                               ; preds = %38
  %92 = load i32*, i32** %6, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @qfalse, align 4
  store i32 %95, i32* %2, align 4
  br label %155

96:                                               ; preds = %91
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %99 = load i32*, i32** %98, align 16
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @WindingBounds(i32* %97, i32* %99, i32* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @FreeWinding(i32* %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %150, %96
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 3
  br i1 %107, label %108, label %153

108:                                              ; preds = %105
  %109 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %116 = load i32*, i32** %115, align 16
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %114, %120
  %122 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = load i32, i32* @qfalse, align 4
  store i32 %125, i32* %2, align 4
  br label %155

126:                                              ; preds = %108
  %127 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %128 = load i32*, i32** %127, align 16
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @qfalse, align 4
  store i32 %136, i32* %2, align 4
  br label %155

137:                                              ; preds = %126
  %138 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp sle i32 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* @qfalse, align 4
  store i32 %148, i32* %2, align 4
  br label %155

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %105

153:                                              ; preds = %105
  %154 = load i32, i32* @qtrue, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %147, %135, %124, %94, %49, %12
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @Vector4Copy(i32, float*) #1

declare dso_local i32* @BaseWindingForPlane(float*, float) #1

declare dso_local i32 @VectorSubtract(i32, float*, float*) #1

declare dso_local i32 @ChopWindingInPlace(i32**, float*, float, float) #1

declare dso_local i32 @WindingBounds(i32*, i32*, i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
