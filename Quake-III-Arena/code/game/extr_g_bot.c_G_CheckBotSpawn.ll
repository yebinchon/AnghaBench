; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_CheckBotSpawn.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_CheckBotSpawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@BOT_SPAWN_QUEUE_DEPTH = common dso_local global i32 0, align 4
@botSpawnQueue = common dso_local global %struct.TYPE_6__* null, align 8
@level = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_gametype = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_CheckBotSpawn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAX_INFO_VALUE, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  %8 = call i32 (...) @G_CheckMinimumPlayers()
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %60, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @BOT_SPAWN_QUEUE_DEPTH, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %9
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @botSpawnQueue, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %60

22:                                               ; preds = %13
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @botSpawnQueue, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %60

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @botSpawnQueue, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ClientBegin(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @botSpawnQueue, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_gametype, i32 0, i32 0), align 8
  %46 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @botSpawnQueue, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = trunc i64 %5 to i32
  %56 = call i32 @trap_GetUserinfo(i32 %54, i8* %7, i32 %55)
  %57 = call i32 @Info_ValueForKey(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @PlayerIntroSound(i32 %57)
  br label %59

59:                                               ; preds = %48, %32
  br label %60

60:                                               ; preds = %59, %31, %21
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %9

63:                                               ; preds = %9
  %64 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @G_CheckMinimumPlayers(...) #2

declare dso_local i32 @ClientBegin(i32) #2

declare dso_local i32 @trap_GetUserinfo(i32, i8*, i32) #2

declare dso_local i32 @PlayerIntroSound(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
