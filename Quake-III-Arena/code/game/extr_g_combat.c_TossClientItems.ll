; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_TossClientItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_TossClientItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i32*, i64*, i64* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@WP_MACHINEGUN = common dso_local global i32 0, align 4
@WP_GRAPPLING_HOOK = common dso_local global i32 0, align 4
@WEAPON_DROPPING = common dso_local global i64 0, align 8
@STAT_WEAPONS = common dso_local global i64 0, align 8
@WP_NONE = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@PW_NUM_POWERUPS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TossClientItems(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @WP_MACHINEGUN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @WP_GRAPPLING_HOOK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WEAPON_DROPPING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %19
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @STAT_WEAPONS, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @WP_NONE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %36
  br label %53

53:                                               ; preds = %52, %15
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @WP_MACHINEGUN, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @WP_GRAPPLING_HOOK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load i32, i32* %4, align 4
  %75 = call i32* @BG_FindItemForWeapon(i32 %74)
  store i32* %75, i32** %3, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call %struct.TYPE_17__* @Drop_Item(%struct.TYPE_17__* %76, i32* %77, float 0.000000e+00)
  br label %79

79:                                               ; preds = %73, %61, %57, %53
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g_gametype, i32 0, i32 0), align 8
  %81 = load i64, i64* @GT_TEAM, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %143

83:                                               ; preds = %79
  store float 4.500000e+01, float* %5, align 4
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %139, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @PW_NUM_POWERUPS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %142

88:                                               ; preds = %84
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %138

101:                                              ; preds = %88
  %102 = load i32, i32* %6, align 4
  %103 = call i32* @BG_FindItemForPowerup(i32 %102)
  store i32* %103, i32** %3, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %139

107:                                              ; preds = %101
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load float, float* %5, align 4
  %111 = call %struct.TYPE_17__* @Drop_Item(%struct.TYPE_17__* %108, i32* %109, float %110)
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %7, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %123 = sub nsw i64 %121, %122
  %124 = sdiv i64 %123, 1000
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %107
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %107
  %136 = load float, float* %5, align 4
  %137 = fadd float %136, 4.500000e+01
  store float %137, float* %5, align 4
  br label %138

138:                                              ; preds = %135, %88
  br label %139

139:                                              ; preds = %138, %106
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %84

142:                                              ; preds = %84
  br label %143

143:                                              ; preds = %142, %79
  ret void
}

declare dso_local i32* @BG_FindItemForWeapon(i32) #1

declare dso_local %struct.TYPE_17__* @Drop_Item(%struct.TYPE_17__*, i32*, float) #1

declare dso_local i32* @BG_FindItemForPowerup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
