; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotWantsToRetreat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotWantsToRetreat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }

@gametype = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@LTG_GETFLAG = common dso_local global i64 0, align 8
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@LTG_ATTACKENEMYBASE = common dso_local global i64 0, align 8
@blueobelisk = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@redobelisk = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotWantsToRetreat(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load i64, i64* @gametype, align 8
  %6 = load i64, i64* @GT_CTF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i64 @BotCTFCarryingFlag(%struct.TYPE_10__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @qtrue, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @BotEntityInfo(i64 %23, i32* %4)
  %25 = call i64 @EntityCarriesFlag(i32* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LTG_GETFLAG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @qtrue, align 4
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @BotAggression(%struct.TYPE_10__* %39)
  %41 = icmp slt i32 %40, 50
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @qtrue, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42, %36, %27, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @BotCTFCarryingFlag(%struct.TYPE_10__*) #1

declare dso_local i32 @BotEntityInfo(i64, i32*) #1

declare dso_local i64 @EntityCarriesFlag(i32*) #1

declare dso_local i32 @BotAggression(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
