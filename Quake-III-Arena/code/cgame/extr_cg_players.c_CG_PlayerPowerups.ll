; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_PlayerPowerups.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_PlayerPowerups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32 }

@PW_QUAD = common dso_local global i32 0, align 4
@PW_FLIGHT = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PW_REDFLAG = common dso_local global i32 0, align 4
@PW_BLUEFLAG = common dso_local global i32 0, align 4
@PW_NEUTRALFLAG = common dso_local global i32 0, align 4
@PW_HASTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*)* @CG_PlayerPowerups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_PlayerPowerups(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %144

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PW_QUAD, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (...) @rand()
  %25 = and i32 %24, 31
  %26 = add nsw i32 200, %25
  %27 = call i32 @trap_R_AddLightToScene(i32 %23, i32 %26, double 0x3FC99999A0000000, double 0x3FC99999A0000000, double 1.000000e+00)
  br label %28

28:                                               ; preds = %20, %14
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PW_FLIGHT, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @vec3_origin, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 6), align 8
  %44 = call i32 @trap_S_AddLoopingSound(i32 %38, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %28
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1), align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %50
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PW_REDFLAG, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %45
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 5), align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @CG_PlayerFlag(%struct.TYPE_13__* %63, i32 %64, i32* %65)
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 4), align 8
  %70 = call i32 @CG_TrailItem(%struct.TYPE_13__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (...) @rand()
  %76 = and i32 %75, 31
  %77 = add nsw i32 200, %76
  %78 = call i32 @trap_R_AddLightToScene(i32 %74, i32 %77, double 1.000000e+00, double 0x3FC99999A0000000, double 0x3FC99999A0000000)
  br label %79

79:                                               ; preds = %71, %45
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @PW_BLUEFLAG, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 3), align 4
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @CG_PlayerFlag(%struct.TYPE_13__* %91, i32 %92, i32* %93)
  br label %99

95:                                               ; preds = %85
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 2), align 8
  %98 = call i32 @CG_TrailItem(%struct.TYPE_13__* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (...) @rand()
  %104 = and i32 %103, 31
  %105 = add nsw i32 200, %104
  %106 = call i32 @trap_R_AddLightToScene(i32 %102, i32 %105, double 0x3FC99999A0000000, double 0x3FC99999A0000000, double 1.000000e+00)
  br label %107

107:                                              ; preds = %99, %79
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @PW_NEUTRALFLAG, align 4
  %110 = shl i32 1, %109
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 1), align 4
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @CG_PlayerFlag(%struct.TYPE_13__* %119, i32 %120, i32* %121)
  br label %127

123:                                              ; preds = %113
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 0), align 8
  %126 = call i32 @CG_TrailItem(%struct.TYPE_13__* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (...) @rand()
  %132 = and i32 %131, 31
  %133 = add nsw i32 200, %132
  %134 = call i32 @trap_R_AddLightToScene(i32 %130, i32 %133, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %135

135:                                              ; preds = %127, %107
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @PW_HASTE, align 4
  %138 = shl i32 1, %137
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = call i32 @CG_HasteTrail(%struct.TYPE_13__* %142)
  br label %144

144:                                              ; preds = %13, %141, %135
  ret void
}

declare dso_local i32 @trap_R_AddLightToScene(i32, i32, double, double, double) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @trap_S_AddLoopingSound(i32, i32, i32, i32) #1

declare dso_local i32 @CG_PlayerFlag(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @CG_TrailItem(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @CG_HasteTrail(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
