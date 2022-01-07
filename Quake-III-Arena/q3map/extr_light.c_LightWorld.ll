; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightWorld.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightWorld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"_color\00", align 1
@ambientColor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"--- CreateLights ---\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%i point lights\0A\00", align 1
@numPointLights = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%i area lights\0A\00", align 1
@numAreaLights = common dso_local global i32 0, align 4
@nogridlighting = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"--- TraceGrid ---\0A\00", align 1
@numGridPoints = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@TraceGrid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"%i x %i x %i = %i grid\0A\00", align 1
@gridBounds = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"--- TraceLtm ---\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@TraceLtm = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"%5i visible samples\0A\00", align 1
@c_visible = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"%5i occluded samples\0A\00", align 1
@c_occluded = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LightWorld() #0 {
  %1 = alloca float, align 4
  %2 = call i32 (...) @SetupGrid()
  %3 = load i32*, i32** @entities, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* @ambientColor, align 4
  %6 = call i32 @GetVectorForKey(i32* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** @entities, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = call float @FloatForKey(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store float %9, float* %1, align 4
  %10 = load i32, i32* @ambientColor, align 4
  %11 = load float, float* %1, align 4
  %12 = load i32, i32* @ambientColor, align 4
  %13 = call i32 @VectorScale(i32 %10, float %11, i32 %12)
  %14 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (...) @CreateEntityLights()
  %16 = load i32, i32* @numPointLights, align 4
  %17 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @numAreaLights, align 4
  %19 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @nogridlighting, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %0
  %23 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32, i32* @numGridPoints, align 4
  %25 = load i32, i32* @qtrue, align 4
  %26 = load i32, i32* @TraceGrid, align 4
  %27 = call i32 @RunThreadsOnIndividual(i32 %24, i32 %25, i32 %26)
  %28 = load i32*, i32** @gridBounds, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @gridBounds, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @gridBounds, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @numGridPoints, align 4
  %38 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %30, i32 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %22, %0
  %40 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %41 = load i32, i32* @numDrawSurfaces, align 4
  %42 = load i32, i32* @qtrue, align 4
  %43 = load i32, i32* @TraceLtm, align 4
  %44 = call i32 @RunThreadsOnIndividual(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @c_visible, align 4
  %46 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @c_occluded, align 4
  %48 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local i32 @SetupGrid(...) #1

declare dso_local i32 @GetVectorForKey(i32*, i8*, i32) #1

declare dso_local float @FloatForKey(i32*, i8*) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @CreateEntityLights(...) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
