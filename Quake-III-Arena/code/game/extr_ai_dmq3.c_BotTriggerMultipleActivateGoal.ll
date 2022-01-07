; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotTriggerMultipleActivateGoal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotTriggerMultipleActivateGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i64, i64, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@CONTENTS_TRIGGER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTriggerMultipleActivateGoal(i32* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %21 = load i32, i32* @qfalse, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @VectorClear(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %30 = call i32 @trap_AAS_ValueForBSPEpairKey(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i32 128)
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %4, align 4
  br label %141

36:                                               ; preds = %3
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @atoi(i8* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %4, align 4
  br label %141

44:                                               ; preds = %36
  %45 = load i32*, i32** %18, align 8
  %46 = call i32 @VectorClear(i32* %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @CONTENTS_TRIGGER, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @BotModelMinsMaxs(i32 %47, i32 0, i32 %48, i32* %49, i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = call i32 @VectorAdd(i32* %52, i32* %53, i32* %54)
  %56 = load i32*, i32** %19, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @VectorScale(i32* %56, double 5.000000e-01, i32* %57)
  %59 = load i32*, i32** %19, align 8
  %60 = load i32*, i32** %20, align 8
  %61 = call i32 @VectorCopy(i32* %59, i32* %60)
  %62 = load i32*, i32** %20, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @VectorCopy(i32* %62, i32* %63)
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 24
  store i32 %68, i32* %66, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @VectorCopy(i32* %69, i32* %70)
  %72 = load i32*, i32** %15, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 100
  store i32 %75, i32* %73, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %79 = call i32 @trap_AAS_TraceAreas(i32* %76, i32* %77, i32* %78, i32* null, i32 10)
  store i32 %79, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %93, %44
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @trap_AAS_AreaReachability(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %96

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %80

96:                                               ; preds = %91, %80
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %139

100:                                              ; preds = %96
  %101 = load i32*, i32** %19, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @VectorCopy(i32* %101, i32* %105)
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @VectorSubtract(i32* %114, i32* %115, i32 %119)
  %121 = load i32*, i32** %17, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @VectorSubtract(i32* %121, i32* %122, i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* @qtrue, align 4
  store i32 %138, i32* %4, align 4
  br label %141

139:                                              ; preds = %96
  %140 = load i32, i32* @qfalse, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %100, %42, %34
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @BotModelMinsMaxs(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, double, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @trap_AAS_TraceAreas(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @trap_AAS_AreaReachability(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
