; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_MenuEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_MenuEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@C_MOVEMENT = common dso_local global i32 0, align 4
@s_controls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@C_LOOKING = common dso_local global i32 0, align 4
@C_WEAPONS = common dso_local global i32 0, align 4
@C_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SET TO DEFAULTS?\00", align 1
@Controls_ResetDefaults_Draw = common dso_local global i32 0, align 4
@Controls_ResetDefaults_Action = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @Controls_MenuEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_MenuEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %84 [
    i32 131, label %9
    i32 134, label %17
    i32 128, label %25
    i32 133, label %33
    i32 140, label %41
    i32 141, label %50
    i32 130, label %62
    i32 139, label %70
    i32 138, label %77
    i32 132, label %77
    i32 137, label %77
    i32 129, label %77
    i32 143, label %77
    i32 142, label %77
    i32 136, label %77
    i32 135, label %77
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QM_ACTIVATED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @C_MOVEMENT, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_controls, i32 0, i32 1), align 4
  %15 = call i32 (...) @Controls_Update()
  br label %16

16:                                               ; preds = %13, %9
  br label %84

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @QM_ACTIVATED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @C_LOOKING, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_controls, i32 0, i32 1), align 4
  %23 = call i32 (...) @Controls_Update()
  br label %24

24:                                               ; preds = %21, %17
  br label %84

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @QM_ACTIVATED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @C_WEAPONS, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_controls, i32 0, i32 1), align 4
  %31 = call i32 (...) @Controls_Update()
  br label %32

32:                                               ; preds = %29, %25
  br label %84

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @QM_ACTIVATED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @C_MISC, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_controls, i32 0, i32 1), align 4
  %39 = call i32 (...) @Controls_Update()
  br label %40

40:                                               ; preds = %37, %33
  br label %84

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @QM_ACTIVATED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @Controls_ResetDefaults_Draw, align 4
  %47 = load i32, i32* @Controls_ResetDefaults_Action, align 4
  %48 = call i32 @UI_ConfirmMenu(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %84

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @QM_ACTIVATED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_controls, i32 0, i32 0), align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (...) @Controls_SetConfig()
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i32 (...) @UI_PopMenu()
  br label %61

61:                                               ; preds = %59, %50
  br label %84

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @QM_ACTIVATED, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call i32 (...) @Controls_SetConfig()
  %68 = call i32 (...) @UI_PopMenu()
  br label %69

69:                                               ; preds = %66, %62
  br label %84

70:                                               ; preds = %2
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @QM_ACTIVATED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (...) @UI_PopMenu()
  br label %76

76:                                               ; preds = %74, %70
  br label %84

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @QM_ACTIVATED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @qtrue, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_controls, i32 0, i32 0), align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %2, %83, %76, %69, %61, %49, %40, %32, %24, %16
  ret void
}

declare dso_local i32 @Controls_Update(...) #1

declare dso_local i32 @UI_ConfirmMenu(i8*, i32, i32) #1

declare dso_local i32 @Controls_SetConfig(...) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
