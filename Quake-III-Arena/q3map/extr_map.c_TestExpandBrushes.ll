; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_TestExpandBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_TestExpandBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32*, i32 }

@entities = common dso_local global %struct.TYPE_12__* null, align 8
@mapplanes = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"expanded.map\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"can't proceed after expanding brushes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestExpandBrushes() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  br label %13

13:                                               ; preds = %76, %0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %80

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call %struct.TYPE_11__* @CopyBrush(%struct.TYPE_11__* %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %72, %16
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %1, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mapplanes, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %39
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %61, %29
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 16, %54
  %56 = call i64 @fabs(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @FindFloatPlane(i32* %67, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %23

75:                                               ; preds = %23
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %4, align 8
  br label %13

80:                                               ; preds = %13
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i32 @WriteBspBrushMap(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %84)
  %86 = call i32 @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_11__* @CopyBrush(%struct.TYPE_11__*) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i64 @FindFloatPlane(i32*, i32) #1

declare dso_local i32 @WriteBspBrushMap(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
