; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_FinishBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_FinishBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }

@buildBrush = common dso_local global %struct.TYPE_13__* null, align 8
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_MONSTERCLIP = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@c_detail = common dso_local global i32 0, align 4
@CONTENTS_ORIGIN = common dso_local global i32 0, align 4
@num_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Entity %i, Brush %i: origin brushes not allowed in world\0A\00", align 1
@entitySourceBrushes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%i %i %i\00", align 1
@entities = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@CONTENTS_AREAPORTAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Entity %i, Brush %i: areaportals only allowed in world\0A\00", align 1
@mapent = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @FinishBrush() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i64*, align 8
  %5 = call i32 (...) @AddBackSides()
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %7 = call i32 @CreateBrushWindings(%struct.TYPE_13__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %121

10:                                               ; preds = %0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %15 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load i32, i32* @qtrue, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @c_detail, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @c_detail, align 4
  br label %25

25:                                               ; preds = %19, %10
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CONTENTS_ORIGIN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %25
  %33 = load i32, i32* @num_entities, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @num_entities, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @entitySourceBrushes, align 4
  %39 = call i32 @_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %121

40:                                               ; preds = %32
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64*, i64** %4, align 8
  %48 = call i32 @VectorAdd(i32 %43, i32 %46, i64* %47)
  %49 = load i64*, i64** %4, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = call i32 @VectorScale(i64* %49, double 5.000000e-01, i64* %50)
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %53 = load i64*, i64** %4, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64*, i64** %4, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %60, i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %67 = load i32, i32* @num_entities, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %69
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %72 = call i32 @SetKeyValue(%struct.TYPE_12__* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i64*, i64** %4, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %75 = load i32, i32* @num_entities, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @VectorCopy(i64* %73, i32 %80)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %121

82:                                               ; preds = %25
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CONTENTS_AREAPORTAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load i32, i32* @num_entities, align 4
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @num_entities, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* @entitySourceBrushes, align 4
  %96 = call i32 @_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %95)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %121

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %82
  %99 = call i32 (...) @AddBrushBevels()
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buildBrush, align 8
  %101 = call %struct.TYPE_10__* @CopyBrush(%struct.TYPE_13__* %100)
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %2, align 8
  %102 = load i32, i32* @num_entities, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @entitySourceBrushes, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %1, align 8
  br label %121

121:                                              ; preds = %98, %92, %40, %35, %9
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  ret %struct.TYPE_10__* %122
}

declare dso_local i32 @AddBackSides(...) #1

declare dso_local i32 @CreateBrushWindings(%struct.TYPE_13__*) #1

declare dso_local i32 @_printf(i8*, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @SetKeyValue(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @AddBrushBevels(...) #1

declare dso_local %struct.TYPE_10__* @CopyBrush(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
