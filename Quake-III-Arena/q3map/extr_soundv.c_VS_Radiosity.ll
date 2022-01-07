; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_Radiosity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_Radiosity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lightFloats = common dso_local global float* null, align 8
@oldLightFloats = common dso_local global float* null, align 8
@numLightBytes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%7i surfaces\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@VS_SurfaceRadiosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VS_Radiosity() #0 {
  %1 = load float*, float** @lightFloats, align 8
  store float* %1, float** @oldLightFloats, align 8
  %2 = load i32, i32* @numLightBytes, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = trunc i64 %4 to i32
  %6 = call i64 @malloc(i32 %5)
  %7 = inttoptr i64 %6 to float*
  store float* %7, float** @lightFloats, align 8
  %8 = load float*, float** @lightFloats, align 8
  %9 = load float*, float** @oldLightFloats, align 8
  %10 = load i32, i32* @numLightBytes, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memcpy(float* %8, float* %9, i32 %13)
  %15 = load i32, i32* @numDrawSurfaces, align 4
  %16 = call i32 @_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @numDrawSurfaces, align 4
  %18 = load i32, i32* @qtrue, align 4
  %19 = load i32, i32* @VS_SurfaceRadiosity, align 4
  %20 = call i32 @RunThreadsOnIndividual(i32 %17, i32 %18, i32 %19)
  %21 = load float*, float** @oldLightFloats, align 8
  %22 = call i32 @free(float* %21)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @_printf(i8*, i32) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
