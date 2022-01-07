; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_CountHumanPlayers.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_CountHumanPlayers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@g_maxclients = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_16__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_CountHumanPlayers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %50, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_maxclients, i32 0, i32 0), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %6
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i64 %13
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %5, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CON_CONNECTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %50

22:                                               ; preds = %10
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SVF_BOT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %50

36:                                               ; preds = %22
  %37 = load i32, i32* %2, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %39, %36
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %46, %35, %21
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %6

53:                                               ; preds = %6
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
