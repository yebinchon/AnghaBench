; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_tick.c_P_Ticker.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_tick.c_P_Ticker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@paused = common dso_local global i64 0, align 8
@netgame = common dso_local global i32 0, align 4
@menuactive = common dso_local global i64 0, align 8
@demoplayback = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_3__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@leveltime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_Ticker() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @paused, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %50

5:                                                ; preds = %0
  %6 = load i32, i32* @netgame, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @menuactive, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load i32, i32* @demoplayback, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @players, align 8
  %16 = load i64, i64* @consoleplayer, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %50

22:                                               ; preds = %14, %11, %8, %5
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @MAXPLAYERS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i64*, i64** @playeringame, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @players, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = call i32 @P_PlayerThink(%struct.TYPE_3__* %38)
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %23

44:                                               ; preds = %23
  %45 = call i32 (...) @P_RunThinkers()
  %46 = call i32 (...) @P_UpdateSpecials()
  %47 = call i32 (...) @P_RespawnSpecials()
  %48 = load i32, i32* @leveltime, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @leveltime, align 4
  br label %50

50:                                               ; preds = %44, %21, %4
  ret void
}

declare dso_local i32 @P_PlayerThink(%struct.TYPE_3__*) #1

declare dso_local i32 @P_RunThinkers(...) #1

declare dso_local i32 @P_UpdateSpecials(...) #1

declare dso_local i32 @P_RespawnSpecials(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
