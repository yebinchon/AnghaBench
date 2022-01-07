; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_OwnerDrawHandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_OwnerDrawHandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, float*, i32)* @UI_OwnerDrawHandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_OwnerDrawHandleKey(i32 %0, i32 %1, float* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %117 [
    i32 142, label %11
    i32 144, label %16
    i32 146, label %21
    i32 143, label %26
    i32 139, label %32
    i32 141, label %37
    i32 128, label %42
    i32 149, label %47
    i32 130, label %53
    i32 154, label %59
    i32 153, label %59
    i32 152, label %59
    i32 151, label %59
    i32 150, label %59
    i32 135, label %68
    i32 134, label %68
    i32 133, label %68
    i32 132, label %68
    i32 131, label %68
    i32 138, label %77
    i32 140, label %82
    i32 137, label %87
    i32 148, label %92
    i32 147, label %97
    i32 136, label %102
    i32 145, label %107
    i32 129, label %112
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = load float*, float** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @UI_Handicap_HandleKey(i32 %12, float* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %120

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load float*, float** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @UI_Effects_HandleKey(i32 %17, float* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %120

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load float*, float** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @UI_ClanName_HandleKey(i32 %22, float* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %120

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load float*, float** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @qtrue, align 4
  %31 = call i32 @UI_GameType_HandleKey(i32 %27, float* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %120

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load float*, float** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @UI_NetGameType_HandleKey(i32 %33, float* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %120

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load float*, float** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @UI_JoinGameType_HandleKey(i32 %38, float* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %120

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = load float*, float** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @UI_Skill_HandleKey(i32 %43, float* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %120

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = load float*, float** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @qtrue, align 4
  %52 = call i32 @UI_TeamName_HandleKey(i32 %48, float* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %120

53:                                               ; preds = %4
  %54 = load i32, i32* %7, align 4
  %55 = load float*, float** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @qfalse, align 4
  %58 = call i32 @UI_TeamName_HandleKey(i32 %54, float* %55, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %120

59:                                               ; preds = %4, %4, %4, %4, %4
  %60 = load i32, i32* %7, align 4
  %61 = load float*, float** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @qtrue, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 154
  %66 = add nsw i32 %65, 1
  %67 = call i32 @UI_TeamMember_HandleKey(i32 %60, float* %61, i32 %62, i32 %63, i32 %66)
  br label %118

68:                                               ; preds = %4, %4, %4, %4, %4
  %69 = load i32, i32* %7, align 4
  %70 = load float*, float** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @qfalse, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 135
  %75 = add nsw i32 %74, 1
  %76 = call i32 @UI_TeamMember_HandleKey(i32 %69, float* %70, i32 %71, i32 %72, i32 %75)
  br label %118

77:                                               ; preds = %4
  %78 = load i32, i32* %7, align 4
  %79 = load float*, float** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @UI_NetSource_HandleKey(i32 %78, float* %79, i32 %80)
  br label %118

82:                                               ; preds = %4
  %83 = load i32, i32* %7, align 4
  %84 = load float*, float** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @UI_NetFilter_HandleKey(i32 %83, float* %84, i32 %85)
  br label %118

87:                                               ; preds = %4
  %88 = load i32, i32* %7, align 4
  %89 = load float*, float** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @UI_OpponentName_HandleKey(i32 %88, float* %89, i32 %90)
  br label %118

92:                                               ; preds = %4
  %93 = load i32, i32* %7, align 4
  %94 = load float*, float** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @UI_BotName_HandleKey(i32 %93, float* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  br label %120

97:                                               ; preds = %4
  %98 = load i32, i32* %7, align 4
  %99 = load float*, float** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @UI_BotSkill_HandleKey(i32 %98, float* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  br label %120

102:                                              ; preds = %4
  %103 = load i32, i32* %7, align 4
  %104 = load float*, float** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @UI_RedBlue_HandleKey(i32 %103, float* %104, i32 %105)
  br label %118

107:                                              ; preds = %4
  %108 = load i32, i32* %7, align 4
  %109 = load float*, float** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @UI_Crosshair_HandleKey(i32 %108, float* %109, i32 %110)
  br label %118

112:                                              ; preds = %4
  %113 = load i32, i32* %7, align 4
  %114 = load float*, float** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @UI_SelectedPlayer_HandleKey(i32 %113, float* %114, i32 %115)
  br label %118

117:                                              ; preds = %4
  br label %118

118:                                              ; preds = %117, %112, %107, %102, %87, %82, %77, %68, %59
  %119 = load i32, i32* @qfalse, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %97, %92, %53, %47, %42, %37, %32, %26, %21, %16, %11
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @UI_Handicap_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_Effects_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_ClanName_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_GameType_HandleKey(i32, float*, i32, i32) #1

declare dso_local i32 @UI_NetGameType_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_JoinGameType_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_Skill_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_TeamName_HandleKey(i32, float*, i32, i32) #1

declare dso_local i32 @UI_TeamMember_HandleKey(i32, float*, i32, i32, i32) #1

declare dso_local i32 @UI_NetSource_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_NetFilter_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_OpponentName_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_BotName_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_BotSkill_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_RedBlue_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_Crosshair_HandleKey(i32, float*, i32) #1

declare dso_local i32 @UI_SelectedPlayer_HandleKey(i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
