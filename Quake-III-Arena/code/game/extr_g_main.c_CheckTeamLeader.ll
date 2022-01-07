; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_CheckTeamLeader.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_CheckTeamLeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@level = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_10__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckTeamLeader(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %30

19:                                               ; preds = %8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %4

33:                                               ; preds = %28, %4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %73, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %73

53:                                               ; preds = %42
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_entities, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SVF_BOT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %53
  %65 = load i8*, i8** @qtrue, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i8* %65, i8** %71, align 8
  br label %76

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %38

76:                                               ; preds = %64, %38
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %100, %76
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %2, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %100

92:                                               ; preds = %81
  %93 = load i8*, i8** @qtrue, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i8* %93, i8** %99, align 8
  br label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %77

103:                                              ; preds = %92, %77
  br label %104

104:                                              ; preds = %103, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
