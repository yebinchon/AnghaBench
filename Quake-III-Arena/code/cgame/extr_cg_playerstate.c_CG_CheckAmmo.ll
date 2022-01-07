; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_playerstate.c_CG_CheckAmmo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_playerstate.c_CG_CheckAmmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@STAT_WEAPONS = common dso_local global i64 0, align 8
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@WP_NUM_WEAPONS = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_CheckAmmo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @STAT_WEAPONS, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %2, align 4
  %12 = load i32, i32* @WP_MACHINEGUN, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %55, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @WP_NUM_WEAPONS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %1, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %55

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  switch i32 %25, label %38 [
    i32 129, label %26
    i32 132, label %26
    i32 130, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %24, %24, %24, %24
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %24
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 200
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %38, %26
  %51 = load i32, i32* %2, align 4
  %52 = icmp sge i32 %51, 5000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  br label %72

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %13

58:                                               ; preds = %13
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  br label %64

63:                                               ; preds = %58
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 0), align 4
  %70 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %71 = call i32 @trap_S_StartLocalSound(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %53, %68, %64
  ret void
}

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
