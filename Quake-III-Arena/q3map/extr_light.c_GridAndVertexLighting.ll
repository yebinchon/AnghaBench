; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_GridAndVertexLighting.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_GridAndVertexLighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nogridlighting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"--- TraceGrid ---\0A\00", align 1
@numGridPoints = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@TraceGrid = common dso_local global i32 0, align 4
@novertexlighting = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"--- Vertex Lighting ---\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@VertexLightingThread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"--- Model Lighting ---\0A\00", align 1
@TriSoupLightingThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GridAndVertexLighting() #0 {
  %1 = call i32 (...) @SetupGrid()
  %2 = call i32 (...) @FindSkyBrushes()
  %3 = call i32 (...) @CreateFilters()
  %4 = call i32 (...) @InitTrace()
  %5 = call i32 (...) @CreateEntityLights()
  %6 = call i32 (...) @CreateSurfaceLights()
  %7 = load i32, i32* @nogridlighting, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = call i32 @_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @numGridPoints, align 4
  %12 = load i32, i32* @qtrue, align 4
  %13 = load i32, i32* @TraceGrid, align 4
  %14 = call i32 @RunThreadsOnIndividual(i32 %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %0
  %16 = load i32, i32* @novertexlighting, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = call i32 @_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @numDrawSurfaces, align 4
  %21 = load i32, i32* @qtrue, align 4
  %22 = load i32, i32* @VertexLightingThread, align 4
  %23 = call i32 @RunThreadsOnIndividual(i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %15
  %25 = call i32 @_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @numDrawSurfaces, align 4
  %27 = load i32, i32* @qtrue, align 4
  %28 = load i32, i32* @TriSoupLightingThread, align 4
  %29 = call i32 @RunThreadsOnIndividual(i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @SetupGrid(...) #1

declare dso_local i32 @FindSkyBrushes(...) #1

declare dso_local i32 @CreateFilters(...) #1

declare dso_local i32 @InitTrace(...) #1

declare dso_local i32 @CreateEntityLights(...) #1

declare dso_local i32 @CreateSurfaceLights(...) #1

declare dso_local i32 @_printf(i8*) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
