; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_FloodEntities.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_FloodEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"------ FloodEntities -------\0A\00", align 1
@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"info_player_start\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"WARNING: no entities inside\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"WARNING: entity reached from outside\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FloodEntities(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = call i32 @Log_Print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %105, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @num_entities, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %108

21:                                               ; preds = %17
  %22 = load i32*, i32** @entities, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @GetVectorForKey(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @vec3_origin, align 4
  %30 = call i64 @VectorCompare(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %105

33:                                               ; preds = %21
  %34 = load i32*, i32** @entities, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i8* @ValueForKey(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %38, i8** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %93, label %46

46:                                               ; preds = %33
  store i32 -16, i32* %4, align 4
  br label %47

47:                                               ; preds = %89, %46
  %48 = load i32, i32* %4, align 4
  %49 = icmp sle i32 %48, 16
  br i1 %49, label %50, label %92

50:                                               ; preds = %47
  store i32 -16, i32* %5, align 4
  br label %51

51:                                               ; preds = %85, %50
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %52, 16
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** @entities, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i64 @PlaceOccupant(i32* %65, i32* %66, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  store i32 999, i32* %4, align 4
  br label %88

74:                                               ; preds = %54
  %75 = load i32, i32* %4, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 16
  store i32 %87, i32* %5, align 4
  br label %51

88:                                               ; preds = %73, %51
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 16
  store i32 %91, i32* %4, align 4
  br label %47

92:                                               ; preds = %47
  br label %104

93:                                               ; preds = %33
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** @entities, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i64 @PlaceOccupant(i32* %94, i32* %95, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 1, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %93
  br label %104

104:                                              ; preds = %103, %92
  br label %105

105:                                              ; preds = %104, %32
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %17

108:                                              ; preds = %17
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = call i32 @Log_Print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %122

113:                                              ; preds = %108
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %113
  br label %122

122:                                              ; preds = %121, %111
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %125, %122
  %133 = phi i1 [ false, %122 ], [ %131, %125 ]
  %134 = zext i1 %133 to i32
  ret i32 %134
}

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @GetVectorForKey(i32*, i8*, i32*) #1

declare dso_local i64 @VectorCompare(i32*, i32) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @PlaceOccupant(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
