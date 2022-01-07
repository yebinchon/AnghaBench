; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BrainSpit.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BrainSpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@A_BrainSpit.easy = internal global i32 0, align 4
@gameskill = common dso_local global i64 0, align 8
@sk_easy = common dso_local global i64 0, align 8
@braintargets = common dso_local global %struct.TYPE_9__** null, align 8
@braintargeton = common dso_local global i64 0, align 8
@numbraintargets = common dso_local global i64 0, align 8
@MT_SPAWNSHOT = common dso_local global i32 0, align 4
@sfx_bospit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_BrainSpit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load i32, i32* @A_BrainSpit.easy, align 4
  %6 = xor i32 %5, 1
  store i32 %6, i32* @A_BrainSpit.easy, align 4
  %7 = load i64, i64* @gameskill, align 8
  %8 = load i64, i64* @sk_easy, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @A_BrainSpit.easy, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %51

14:                                               ; preds = %10, %1
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @braintargets, align 8
  %16 = load i64, i64* @braintargeton, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 %16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %3, align 8
  %19 = load i64, i64* @braintargeton, align 8
  %20 = add i64 %19, 1
  %21 = load i64, i64* @numbraintargets, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* @braintargeton, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32, i32* @MT_SPAWNSHOT, align 4
  %26 = call %struct.TYPE_9__* @P_SpawnMissile(%struct.TYPE_9__* %23, %struct.TYPE_9__* %24, i32 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %4, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %36, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %40, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @sfx_bospit, align 4
  %50 = call i32 @S_StartSound(i32* null, i32 %49)
  br label %51

51:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.TYPE_9__* @P_SpawnMissile(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
