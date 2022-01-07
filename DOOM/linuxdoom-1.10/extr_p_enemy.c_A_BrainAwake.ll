; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BrainAwake.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BrainAwake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@numbraintargets = common dso_local global i64 0, align 8
@braintargeton = common dso_local global i64 0, align 8
@thinkercap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@P_MobjThinker = common dso_local global i64 0, align 8
@MT_BOSSTARGET = common dso_local global i64 0, align 8
@braintargets = common dso_local global %struct.TYPE_9__** null, align 8
@sfx_bossit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_BrainAwake(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64 0, i64* @numbraintargets, align 8
  store i64 0, i64* @braintargeton, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @thinkercap, i32 0, i32 1), align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @thinkercap, i32 0, i32 1), align 8
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  br label %7

7:                                                ; preds = %34, %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, @thinkercap
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @P_MobjThinker, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %34

18:                                               ; preds = %10
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = bitcast %struct.TYPE_8__* %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MT_BOSSTARGET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @braintargets, align 8
  %29 = load i64, i64* @numbraintargets, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %29
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %30, align 8
  %31 = load i64, i64* @numbraintargets, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* @numbraintargets, align 8
  br label %33

33:                                               ; preds = %26, %18
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %3, align 8
  br label %7

38:                                               ; preds = %7
  %39 = load i32, i32* @sfx_bossit, align 4
  %40 = call i32 @S_StartSound(i32* null, i32 %39)
  ret void
}

declare dso_local i32 @S_StartSound(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
