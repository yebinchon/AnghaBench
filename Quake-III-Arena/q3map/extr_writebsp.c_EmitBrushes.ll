; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_writebsp.c_EmitBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_writebsp.c_EmitBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i8* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@numbrushes = common dso_local global i64 0, align 8
@MAX_MAP_BRUSHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"MAX_MAP_BRUSHES\00", align 1
@dbrushes = common dso_local global %struct.TYPE_14__* null, align 8
@numbrushsides = common dso_local global i64 0, align 8
@MAX_MAP_BRUSHSIDES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"MAX_MAP_BRUSHSIDES \00", align 1
@dbrushsides = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitBrushes(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %5, align 8
  br label %8

8:                                                ; preds = %99, %1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %11, label %103

11:                                               ; preds = %8
  %12 = load i64, i64* @numbrushes, align 8
  %13 = load i64, i64* @MAX_MAP_BRUSHES, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i64, i64* @numbrushes, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushes, align 8
  %22 = load i64, i64* @numbrushes, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i64 %22
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %4, align 8
  %24 = load i64, i64* @numbrushes, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* @numbrushes, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @EmitShader(i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* @numbrushsides, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %95, %17
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %95

56:                                               ; preds = %45
  %57 = load i64, i64* @numbrushsides, align 8
  %58 = load i64, i64* @MAX_MAP_BRUSHSIDES, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dbrushsides, align 8
  %64 = load i64, i64* @numbrushsides, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %64
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %6, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* @numbrushsides, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* @numbrushsides, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @EmitShader(i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %62, %55
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %39

98:                                               ; preds = %39
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %5, align 8
  br label %8

103:                                              ; preds = %8
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i8* @EmitShader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
