; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_FloodEntities.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_FloodEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"--- FloodEntities ---\0A\00", align 1
@qfalse = common dso_local global i64 0, align 8
@c_floodedleafs = common dso_local global i64 0, align 8
@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@qtrue = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%5i flooded leafs\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no entities in open -- no filling\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"entity reached from outside -- no filling\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FloodEntities(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @qfalse, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i64 0, i64* @c_floodedleafs, align 8
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %53, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @num_entities, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load i32*, i32** @entities, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @GetVectorForKey(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @vec3_origin, align 4
  %29 = call i64 @VectorCompare(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %53

32:                                               ; preds = %20
  %33 = load i32*, i32** @entities, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i8* @ValueForKey(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** @entities, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @PlaceOccupant(i32* %42, i32* %43, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i64, i64* @qtrue, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %50, %32
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %16

56:                                               ; preds = %16
  %57 = load i64, i64* @c_floodedleafs, align 8
  %58 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %72

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %75, %72
  %83 = phi i1 [ false, %72 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  ret i64 %85
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @GetVectorForKey(i32*, i8*, i32*) #1

declare dso_local i64 @VectorCompare(i32*, i32) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i64 @PlaceOccupant(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
