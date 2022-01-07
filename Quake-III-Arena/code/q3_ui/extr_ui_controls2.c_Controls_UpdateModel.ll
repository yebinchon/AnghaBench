; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_UpdateModel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_UpdateModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i8*, i8*, i32 }

@s_controls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@YAW = common dso_local global i64 0, align 8
@LEGS_IDLE = common dso_local global i8* null, align 8
@TORSO_STAND = common dso_local global i8* null, align 8
@qfalse = common dso_local global i32 0, align 4
@LEGS_RUN = common dso_local global i8* null, align 8
@LEGS_WALK = common dso_local global i8* null, align 8
@LEGS_BACK = common dso_local global i8* null, align 8
@LEGS_JUMP = common dso_local global i8* null, align 8
@LEGS_IDLECR = common dso_local global i8* null, align 8
@PITCH = common dso_local global i64 0, align 8
@WP_GAUNTLET = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@WP_SHOTGUN = common dso_local global i32 0, align 4
@WP_GRENADE_LAUNCHER = common dso_local global i32 0, align 4
@WP_ROCKET_LAUNCHER = common dso_local global i32 0, align 4
@WP_LIGHTNING = common dso_local global i32 0, align 4
@WP_RAILGUN = common dso_local global i32 0, align 4
@WP_PLASMAGUN = common dso_local global i32 0, align 4
@WP_BFG = common dso_local global i32 0, align 4
@WP_GRAPPLING_HOOK = common dso_local global i32 0, align 4
@TORSO_ATTACK = common dso_local global i8* null, align 8
@TORSO_GESTURE = common dso_local global i8* null, align 8
@BOTH_DEATH1 = common dso_local global i8* null, align 8
@WP_NONE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Controls_UpdateModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_UpdateModel(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %4 = call i32 @VectorClear(i32* %3)
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %6 = call i32 @VectorClear(i32* %5)
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %8 = load i64, i64* @YAW, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 150, i32* %9, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %11 = load i64, i64* @YAW, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %15 = load i64, i64* @YAW, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i8*, i8** @LEGS_IDLE, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %18 = load i8*, i8** @TORSO_STAND, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  %20 = load i32, i32* %2, align 4
  switch i32 %20, label %101 [
    i32 143, label %21
    i32 138, label %23
    i32 151, label %25
    i32 146, label %27
    i32 149, label %29
    i32 140, label %31
    i32 139, label %37
    i32 142, label %43
    i32 141, label %53
    i32 144, label %63
    i32 145, label %67
    i32 137, label %71
    i32 135, label %73
    i32 134, label %75
    i32 133, label %77
    i32 132, label %79
    i32 131, label %81
    i32 130, label %83
    i32 129, label %85
    i32 128, label %87
    i32 136, label %89
    i32 152, label %91
    i32 147, label %93
    i32 148, label %95
    i32 150, label %99
  ]

21:                                               ; preds = %1
  %22 = load i8*, i8** @LEGS_RUN, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %102

23:                                               ; preds = %1
  %24 = load i8*, i8** @LEGS_WALK, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %102

25:                                               ; preds = %1
  %26 = load i8*, i8** @LEGS_BACK, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %102

27:                                               ; preds = %1
  %28 = load i8*, i8** @LEGS_JUMP, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %102

29:                                               ; preds = %1
  %30 = load i8*, i8** @LEGS_IDLECR, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %102

31:                                               ; preds = %1
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %33 = load i64, i64* @YAW, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 90
  store i32 %36, i32* %34, align 4
  br label %102

37:                                               ; preds = %1
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %39 = load i64, i64* @YAW, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 90
  store i32 %42, i32* %40, align 4
  br label %102

43:                                               ; preds = %1
  %44 = load i8*, i8** @LEGS_WALK, align 8
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %46 = load i64, i64* @YAW, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 90
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %51 = load i64, i64* @YAW, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  br label %102

53:                                               ; preds = %1
  %54 = load i8*, i8** @LEGS_WALK, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %56 = load i64, i64* @YAW, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 90
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %61 = load i64, i64* @YAW, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  br label %102

63:                                               ; preds = %1
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %65 = load i64, i64* @PITCH, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 -45, i32* %66, align 4
  br label %102

67:                                               ; preds = %1
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %69 = load i64, i64* @PITCH, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 45, i32* %70, align 4
  br label %102

71:                                               ; preds = %1
  %72 = load i32, i32* @WP_GAUNTLET, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

73:                                               ; preds = %1
  %74 = load i32, i32* @WP_MACHINEGUN, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

75:                                               ; preds = %1
  %76 = load i32, i32* @WP_SHOTGUN, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

77:                                               ; preds = %1
  %78 = load i32, i32* @WP_GRENADE_LAUNCHER, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

79:                                               ; preds = %1
  %80 = load i32, i32* @WP_ROCKET_LAUNCHER, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

81:                                               ; preds = %1
  %82 = load i32, i32* @WP_LIGHTNING, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

83:                                               ; preds = %1
  %84 = load i32, i32* @WP_RAILGUN, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

85:                                               ; preds = %1
  %86 = load i32, i32* @WP_PLASMAGUN, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

87:                                               ; preds = %1
  %88 = load i32, i32* @WP_BFG, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

89:                                               ; preds = %1
  %90 = load i32, i32* @WP_GRAPPLING_HOOK, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

91:                                               ; preds = %1
  %92 = load i8*, i8** @TORSO_ATTACK, align 8
  store i8* %92, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  br label %102

93:                                               ; preds = %1
  %94 = load i8*, i8** @TORSO_GESTURE, align 8
  store i8* %94, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  br label %102

95:                                               ; preds = %1
  %96 = load i8*, i8** @BOTH_DEATH1, align 8
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %97 = load i8*, i8** @BOTH_DEATH1, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  %98 = load i32, i32* @WP_NONE, align 4
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %102

99:                                               ; preds = %1
  %100 = load i32, i32* @qtrue, align 4
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %102

101:                                              ; preds = %1
  br label %102

102:                                              ; preds = %101, %99, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %67, %63, %53, %43, %37, %31, %29, %27, %25, %23, %21
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  %109 = call i32 @UI_PlayerInfo_SetInfo(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 6), i8* %103, i8* %104, i32* %105, i32* %106, i32 %107, i32 %108)
  ret void
}

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i8*, i8*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
