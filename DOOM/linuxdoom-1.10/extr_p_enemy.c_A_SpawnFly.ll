; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_SpawnFly.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_SpawnFly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_10__ = type { i32 }

@MT_SPAWNFIRE = common dso_local global i32 0, align 4
@sfx_telept = common dso_local global i32 0, align 4
@MT_TROOP = common dso_local global i32 0, align 4
@MT_SERGEANT = common dso_local global i32 0, align 4
@MT_SHADOWS = common dso_local global i32 0, align 4
@MT_PAIN = common dso_local global i32 0, align 4
@MT_HEAD = common dso_local global i32 0, align 4
@MT_VILE = common dso_local global i32 0, align 4
@MT_UNDEAD = common dso_local global i32 0, align 4
@MT_BABY = common dso_local global i32 0, align 4
@MT_FATSO = common dso_local global i32 0, align 4
@MT_KNIGHT = common dso_local global i32 0, align 4
@MT_BRUISER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_SpawnFly(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %127

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MT_SPAWNFIRE, align 4
  %28 = call %struct.TYPE_11__* @P_SpawnMobj(i32 %20, i32 %23, i32 %26, i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %4, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load i32, i32* @sfx_telept, align 4
  %31 = call i32 @S_StartSound(%struct.TYPE_11__* %29, i32 %30)
  %32 = call i32 (...) @P_Random()
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 50
  br i1 %34, label %35, label %37

35:                                               ; preds = %14
  %36 = load i32, i32* @MT_TROOP, align 4
  store i32 %36, i32* %7, align 4
  br label %93

37:                                               ; preds = %14
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 90
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @MT_SERGEANT, align 4
  store i32 %41, i32* %7, align 4
  br label %92

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 120
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @MT_SHADOWS, align 4
  store i32 %46, i32* %7, align 4
  br label %91

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 130
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @MT_PAIN, align 4
  store i32 %51, i32* %7, align 4
  br label %90

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 160
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @MT_HEAD, align 4
  store i32 %56, i32* %7, align 4
  br label %89

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 162
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @MT_VILE, align 4
  store i32 %61, i32* %7, align 4
  br label %88

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 172
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @MT_UNDEAD, align 4
  store i32 %66, i32* %7, align 4
  br label %87

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 192
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @MT_BABY, align 4
  store i32 %71, i32* %7, align 4
  br label %86

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 222
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @MT_FATSO, align 4
  store i32 %76, i32* %7, align 4
  br label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 246
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @MT_KNIGHT, align 4
  store i32 %81, i32* %7, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @MT_BRUISER, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %80
  br label %85

85:                                               ; preds = %84, %75
  br label %86

86:                                               ; preds = %85, %70
  br label %87

87:                                               ; preds = %86, %65
  br label %88

88:                                               ; preds = %87, %60
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90, %45
  br label %92

92:                                               ; preds = %91, %40
  br label %93

93:                                               ; preds = %92, %35
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.TYPE_11__* @P_SpawnMobj(i32 %96, i32 %99, i32 %102, i32 %103)
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %3, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = call i64 @P_LookForPlayers(%struct.TYPE_11__* %105, i32 1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %93
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @P_SetMobjState(%struct.TYPE_11__* %109, i32 %114)
  br label %116

116:                                              ; preds = %108, %93
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @P_TeleportMove(%struct.TYPE_11__* %117, i32 %120, i32 %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = call i32 @P_RemoveMobj(%struct.TYPE_11__* %125)
  br label %127

127:                                              ; preds = %116, %13
  ret void
}

declare dso_local %struct.TYPE_11__* @P_SpawnMobj(i32, i32, i32, i32) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i64 @P_LookForPlayers(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @P_TeleportMove(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @P_RemoveMobj(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
