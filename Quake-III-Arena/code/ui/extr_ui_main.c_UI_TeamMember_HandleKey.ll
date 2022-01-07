; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_TeamMember_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_TeamMember_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ui_blueteam%i\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ui_redteam%i\00", align 1
@ui_actualNetGameType = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, float*, i32, i64, i32)* @UI_TeamMember_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @UI_TeamMember_HandleKey(i32 %0, float* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @K_MOUSE1, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @K_MOUSE2, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @K_ENTER, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @K_KP_ENTER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %25, %21, %17, %5
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @va(i8* %33, i32 %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @trap_Cvar_VariableValue(i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @K_MOUSE2, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %13, align 4
  br label %47

44:                                               ; preds = %29
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_actualNetGameType, i32 0, i32 0), align 8
  %49 = load i64, i64* @GT_TEAM, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 4
  %54 = add nsw i32 %53, 2
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %65

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 4
  %62 = add nsw i32 %61, 2
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %56
  br label %81

66:                                               ; preds = %47
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (...) @UI_GetNumBots()
  %69 = add nsw i32 %68, 2
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  br label %80

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = call i32 (...) @UI_GetNumBots()
  %77 = add nsw i32 %76, 2
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %65
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = call i32 @trap_Cvar_Set(i8* %82, i8* %84)
  %86 = load i64, i64* @qtrue, align 8
  store i64 %86, i64* %6, align 8
  br label %89

87:                                               ; preds = %25
  %88 = load i64, i64* @qfalse, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %87, %81
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @UI_GetNumBots(...) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
