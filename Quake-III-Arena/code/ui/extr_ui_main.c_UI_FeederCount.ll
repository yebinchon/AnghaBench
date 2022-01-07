; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_FeederCount.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_FeederCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FEEDER_HEADS = common dso_local global float 0.000000e+00, align 4
@FEEDER_Q3HEADS = common dso_local global float 0.000000e+00, align 4
@uiInfo = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FEEDER_CINEMATICS = common dso_local global float 0.000000e+00, align 4
@FEEDER_MAPS = common dso_local global float 0.000000e+00, align 4
@FEEDER_ALLMAPS = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@FEEDER_SERVERS = common dso_local global float 0.000000e+00, align 4
@FEEDER_SERVERSTATUS = common dso_local global float 0.000000e+00, align 4
@FEEDER_FINDPLAYER = common dso_local global float 0.000000e+00, align 4
@FEEDER_PLAYER_LIST = common dso_local global float 0.000000e+00, align 4
@FEEDER_TEAM_LIST = common dso_local global float 0.000000e+00, align 4
@FEEDER_MODS = common dso_local global float 0.000000e+00, align 4
@FEEDER_DEMOS = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float)* @UI_FeederCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_FeederCount(float %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = load float, float* @FEEDER_HEADS, align 4
  %6 = fcmp oeq float %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @UI_HeadCountByTeam()
  store i32 %8, i32* %2, align 4
  br label %109

9:                                                ; preds = %1
  %10 = load float, float* %3, align 4
  %11 = load float, float* @FEEDER_Q3HEADS, align 4
  %12 = fcmp oeq float %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 0), align 8
  store i32 %14, i32* %2, align 4
  br label %109

15:                                               ; preds = %9
  %16 = load float, float* %3, align 4
  %17 = load float, float* @FEEDER_CINEMATICS, align 4
  %18 = fcmp oeq float %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 1), align 4
  store i32 %20, i32* %2, align 4
  br label %109

21:                                               ; preds = %15
  %22 = load float, float* %3, align 4
  %23 = load float, float* @FEEDER_MAPS, align 4
  %24 = fcmp oeq float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %3, align 4
  %27 = load float, float* @FEEDER_ALLMAPS, align 4
  %28 = fcmp oeq float %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25, %21
  %30 = load float, float* %3, align 4
  %31 = load float, float* @FEEDER_MAPS, align 4
  %32 = fcmp oeq float %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @qtrue, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @qfalse, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @UI_MapCountByGameType(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %109

40:                                               ; preds = %25
  %41 = load float, float* %3, align 4
  %42 = load float, float* @FEEDER_SERVERS, align 4
  %43 = fcmp oeq float %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 10, i32 0), align 4
  store i32 %45, i32* %2, align 4
  br label %109

46:                                               ; preds = %40
  %47 = load float, float* %3, align 4
  %48 = load float, float* @FEEDER_SERVERSTATUS, align 4
  %49 = fcmp oeq float %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 9, i32 0), align 8
  store i32 %51, i32* %2, align 4
  br label %109

52:                                               ; preds = %46
  %53 = load float, float* %3, align 4
  %54 = load float, float* @FEEDER_FINDPLAYER, align 4
  %55 = fcmp oeq float %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 2), align 8
  store i32 %57, i32* %2, align 4
  br label %109

58:                                               ; preds = %52
  %59 = load float, float* %3, align 4
  %60 = load float, float* @FEEDER_PLAYER_LIST, align 4
  %61 = fcmp oeq float %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 8, i32 0), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 3), align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 8, i32 0), align 8
  %68 = add nsw i64 %67, 3000
  store i64 %68, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 3), align 8
  %69 = call i32 (...) @UI_BuildPlayerList()
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 4), align 8
  store i32 %71, i32* %2, align 4
  br label %109

72:                                               ; preds = %58
  %73 = load float, float* %3, align 4
  %74 = load float, float* @FEEDER_TEAM_LIST, align 4
  %75 = fcmp oeq float %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 8, i32 0), align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 3), align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 8, i32 0), align 8
  %82 = add nsw i64 %81, 3000
  store i64 %82, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 3), align 8
  %83 = call i32 (...) @UI_BuildPlayerList()
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 5), align 4
  store i32 %85, i32* %2, align 4
  br label %109

86:                                               ; preds = %72
  %87 = load float, float* %3, align 4
  %88 = load float, float* @FEEDER_MODS, align 4
  %89 = fcmp oeq float %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 6), align 8
  store i32 %91, i32* %2, align 4
  br label %109

92:                                               ; preds = %86
  %93 = load float, float* %3, align 4
  %94 = load float, float* @FEEDER_DEMOS, align 4
  %95 = fcmp oeq float %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uiInfo, i32 0, i32 7), align 4
  store i32 %97, i32* %2, align 4
  br label %109

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %96, %90, %84, %70, %56, %50, %44, %37, %19, %13, %7
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @UI_HeadCountByTeam(...) #1

declare dso_local i32 @UI_MapCountByGameType(i32) #1

declare dso_local i32 @UI_BuildPlayerList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
