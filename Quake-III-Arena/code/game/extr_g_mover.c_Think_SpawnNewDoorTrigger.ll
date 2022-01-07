; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_Think_SpawnNewDoorTrigger.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_Think_SpawnNewDoorTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i64*, i64*, i64*, i64*, i32 }

@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"door_trigger\00", align 1
@CONTENTS_TRIGGER = common dso_local global i32 0, align 4
@Touch_DoorTrigger = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Think_SpawnNewDoorTrigger(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  br label %9

9:                                                ; preds = %16, %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* @qtrue, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %3, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = call i32 @VectorCopy(i64* %24, i64* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = call i32 @VectorCopy(i64* %30, i64* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %3, align 8
  br label %36

36:                                               ; preds = %54, %20
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = call i32 @AddPointToBounds(i64* %43, i64* %44, i64* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64*, i64** %4, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = call i32 @AddPointToBounds(i64* %50, i64* %51, i64* %52)
  br label %54

54:                                               ; preds = %39
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %3, align 8
  br label %36

58:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load i64*, i64** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %67, %72
  %74 = load i64*, i64** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %78, %83
  %85 = icmp slt i64 %73, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %62
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %59

92:                                               ; preds = %59
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 120
  store i64 %98, i64* %96, align 8
  %99 = load i64*, i64** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, 120
  store i64 %104, i64* %102, align 8
  %105 = call %struct.TYPE_9__* (...) @G_Spawn()
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %3, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %107, align 8
  %108 = load i64*, i64** %4, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = call i32 @VectorCopy(i64* %108, i64* %112)
  %114 = load i64*, i64** %5, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load i64*, i64** %117, align 8
  %119 = call i32 @VectorCopy(i64* %114, i64* %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %122, align 8
  %123 = load i32, i32* @CONTENTS_TRIGGER, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* @Touch_DoorTrigger, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %134 = call i32 @trap_LinkEntity(%struct.TYPE_9__* %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 4
  %140 = call i32 @MatchTeam(%struct.TYPE_9__* %135, i32 %138, i32 %139)
  ret void
}

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @AddPointToBounds(i64*, i64*, i64*) #1

declare dso_local %struct.TYPE_9__* @G_Spawn(...) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_9__*) #1

declare dso_local i32 @MatchTeam(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
