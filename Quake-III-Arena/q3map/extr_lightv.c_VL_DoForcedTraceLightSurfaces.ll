; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_DoForcedTraceLightSurfaces.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_DoForcedTraceLightSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"forced trace light\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@VL_DoForcedTraceLight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_DoForcedTraceLightSurfaces() #0 {
  %1 = call i32 @_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @numDrawSurfaces, align 4
  %3 = load i32, i32* @qtrue, align 4
  %4 = load i32, i32* @VL_DoForcedTraceLight, align 4
  %5 = call i32 @RunThreadsOnIndividual(i32 %2, i32 %3, i32 %4)
  ret void
}

declare dso_local i32 @_printf(i8*) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
