; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_LightWorld.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_LightWorld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"_color\00", align 1
@lightAmbientColor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%7i lights\0A\00", align 1
@numvlights = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@VL_FloodLightThread = common dso_local global i32 0, align 4
@numDrawSurfaces = common dso_local global i32 0, align 4
@lsurfaceTest = common dso_local global %struct.TYPE_4__** null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"%7i light volumes casted\0A\00", align 1
@vlights = common dso_local global %struct.TYPE_3__** null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"%7i lights in solid\0A\00", align 1
@radiosity_scale = common dso_local global i32 0, align 4
@radiosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_LightWorld() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = load i32*, i32** @entities, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* @lightAmbientColor, align 4
  %8 = call i32 @GetVectorForKey(i32* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** @entities, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = call float @FloatForKey(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store float %11, float* %4, align 4
  %12 = load i32, i32* @lightAmbientColor, align 4
  %13 = load float, float* %4, align 4
  %14 = load i32, i32* @lightAmbientColor, align 4
  %15 = call i32 @VectorScale(i32 %12, float %13, i32 %14)
  %16 = load i32, i32* @numvlights, align 4
  %17 = call i32 @_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @numvlights, align 4
  %19 = load i32, i32* @qtrue, align 4
  %20 = load i32, i32* @VL_FloodLightThread, align 4
  %21 = call i32 @RunThreadsOnIndividual(i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %46, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @numDrawSurfaces, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @lsurfaceTest, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @lsurfaceTest, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %33, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %69, %49
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @numvlights, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @vlights, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %57, i64 %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %52

72:                                               ; preds = %52
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  store i32 1, i32* @radiosity_scale, align 4
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %83, %72
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @radiosity, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = call i32 (...) @VL_Radiosity()
  %81 = load i32, i32* @radiosity_scale, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* @radiosity_scale, align 4
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %75

86:                                               ; preds = %75
  %87 = call i32 (...) @VL_StoreLightmap()
  %88 = call i32 (...) @VL_DoForcedTraceLightSurfaces()
  ret void
}

declare dso_local i32 @GetVectorForKey(i32*, i8*, i32) #1

declare dso_local float @FloatForKey(i32*, i8*) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i32 @_printf(i8*, i32) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

declare dso_local i32 @VL_Radiosity(...) #1

declare dso_local i32 @VL_StoreLightmap(...) #1

declare dso_local i32 @VL_DoForcedTraceLightSurfaces(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
