; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotCheckSnapshot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotCheckSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i64, i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@vec3_origin = common dso_local global i32 0, align 4
@AVOID_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCheckSnapshot(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @vec3_origin, align 4
  %9 = load i32, i32* @AVOID_CLEAR, align 4
  %10 = call i32 @trap_BotAddAvoidSpot(i32 %7, i32 %8, i32 0, i32 %9)
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %22, %1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @BotAI_GetSnapshotEntity(i32 %18, i32 %19, %struct.TYPE_16__* %4)
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = call i32 @BotCheckEvents(%struct.TYPE_17__* %23, %struct.TYPE_16__* %4)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = call i32 @BotCheckForGrenades(%struct.TYPE_17__* %25, %struct.TYPE_16__* %4)
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BotAI_GetEntityState(i32 %30, %struct.TYPE_16__* %4)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = call i32 @BotCheckEvents(%struct.TYPE_17__* %42, %struct.TYPE_16__* %4)
  ret void
}

declare dso_local i32 @trap_BotAddAvoidSpot(i32, i32, i32, i32) #1

declare dso_local i32 @BotAI_GetSnapshotEntity(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @BotCheckEvents(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @BotCheckForGrenades(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @BotAI_GetEntityState(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
