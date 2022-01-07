; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_Team_TakeFlagSound.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_Team_TakeFlagSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Warning:  NULL passed to Team_TakeFlagSound\0A\00", align 1
@teamgame = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@FLAG_ATBASE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@EV_GLOBAL_TEAM_SOUND = common dso_local global i32 0, align 4
@GTS_RED_TAKEN = common dso_local global i32 0, align 4
@GTS_BLUE_TAKEN = common dso_local global i32 0, align 4
@SVF_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Team_TakeFlagSound(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = icmp eq %struct.TYPE_12__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @G_Printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %65

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %38 [
    i32 128, label %12
    i32 129, label %25
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @teamgame, i32 0, i32 3), align 4
  %14 = load i32, i32* @FLAG_ATBASE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @teamgame, i32 0, i32 2), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 4
  %19 = sub nsw i32 %18, 10000
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %65

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @teamgame, i32 0, i32 2), align 4
  br label %38

25:                                               ; preds = %10
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @teamgame, i32 0, i32 1), align 4
  %27 = load i32, i32* @FLAG_ATBASE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @teamgame, i32 0, i32 0), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 4
  %32 = sub nsw i32 %31, 10000
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %65

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @teamgame, i32 0, i32 0), align 4
  br label %38

38:                                               ; preds = %10, %36, %23
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EV_GLOBAL_TEAM_SOUND, align 4
  %45 = call %struct.TYPE_12__* @G_TempEntity(i32 %43, i32 %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 129
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i32, i32* @GTS_RED_TAKEN, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %58

53:                                               ; preds = %38
  %54 = load i32, i32* @GTS_BLUE_TAKEN, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @SVF_BROADCAST, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %34, %21, %8
  ret void
}

declare dso_local i32 @G_Printf(i8*) #1

declare dso_local %struct.TYPE_12__* @G_TempEntity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
