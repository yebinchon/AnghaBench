; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotModelMinsMaxs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotModelMinsMaxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@g_entities = common dso_local global %struct.TYPE_8__* null, align 8
@level = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotModelMinsMaxs(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_entities, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %86, %5
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %86

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %86

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %86

48:                                               ; preds = %40, %37
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @VectorAdd(i32 %62, i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %58, %55
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @VectorAdd(i32 %76, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %72, %69
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %104

85:                                               ; preds = %48
  br label %86

86:                                               ; preds = %85, %47, %36, %25
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 1
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %12, align 8
  br label %16

91:                                               ; preds = %16
  %92 = load i64, i64* %10, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @VectorClear(i64 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @VectorClear(i64 %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @VectorAdd(i32, i32, i64) #1

declare dso_local i32 @VectorClear(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
