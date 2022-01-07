; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_CountLightmaps.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_CountLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"--- CountLightmaps ---\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@drawSurfaces = common dso_local global %struct.TYPE_3__* null, align 8
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@numLightBytes = common dso_local global i32 0, align 4
@MAX_MAP_LIGHTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"MAX_MAP_LIGHTING exceeded\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%5i drawSurfaces\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%5i lightmaps\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CountLightmaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %24, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @numDrawSurfaces, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drawSurfaces, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %19, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %34 = mul nsw i32 %32, %33
  %35 = mul nsw i32 %34, 3
  store i32 %35, i32* @numLightBytes, align 4
  %36 = load i32, i32* @numLightBytes, align 4
  %37 = load i32, i32* @MAX_MAP_LIGHTING, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %27
  %42 = load i32, i32* @numDrawSurfaces, align 4
  %43 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
